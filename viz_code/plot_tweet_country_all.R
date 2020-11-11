##################################################################################
### This file generates the plots for the place country code from tweets that have it
### as seen in http://www.panacealab.org/covid19/
### Code by Juan M. Banda, modified from other sources.
### Code is not very clean as of now
### The Input TSV format for this plot is a set of files containing two columns
### tab separated in the form:
### tweet_place_country_code TAB frequency
### 
### Note these files are not included in the download but can be generated from 
### the hydrated tweets.
### Note you will also need to get the map shapes file TM_WORLD_BORDERS-0.3.shp
### from: https://thematicmapping.org/downloads/world_borders.php
###
### The Code to generate the interactive table with counts is at the end of this
### file.
################################################################################

library(rgdal)
library(tidyr)
library(dplyr)
library(binr)
library(leaflet)
library(RColorBrewer)
options(stringsAsFactors = FALSE)

path = "Y:/COVID19-Analysis/stats_clean/"
total<-""
file.names <- dir(path, pattern ="country_statistics.tsv|country-statistics.tsv")
for(i in 1:length(file.names)){
  file <- read.csv(paste(path, file.names[i], sep=""),header=TRUE, sep="\t", stringsAsFactors=FALSE)
  if (nrow(file)>1) {
    total <- rbind(total, file)
  }
}

path = "Y:/COVID19-Analysis/stats_RT/"
file.names <- dir(path, pattern ="country_statistics.tsv|country-statistics.tsv")
for(i in 1:length(file.names)){
  file <- read.csv(paste(path, file.names[i], sep=""),header=TRUE, sep="\t", stringsAsFactors=FALSE)
  if (nrow(file)>1) {
    total <- rbind(total, file)
  }
}

total <- total %>% mutate_at(c("tweet_id"), as.numeric)
total <- total %>% group_by(tweet_place_country_code) %>% summarise(Frequency = sum(tweet_id))

total<-total[!(total$tweet_place_country_code==''),]
total<-total[!(total$tweet_place_country_code=='False'),]
total<-total[!(total$tweet_place_country_code=='True'),]
total<-total[!(nchar(total$tweet_place_country_code)!=2),]

total$tweet_place_country_code = toupper(total$tweet_place_country_code)

total <- total %>% group_by(tweet_place_country_code) %>% summarise(Frequency = sum(Frequency))


colnames(total)[1] <-"ISO2"

#mapped_data <- joinCountryData2Map(total, joinCode = "ISO2", nameJoinColumn = "tweet_place_country_code")

world_spdf<-readOGR(dsn=path.expand("Y:/COVID19-Analysis/map_shapes/TM_WORLD_BORDERS-0.3.shp"), layer="TM_WORLD_BORDERS-0.3")

world_spdf<- merge(world_spdf, total, by="ISO2",all.x=T)

valuesB<- world_spdf@data$Frequency
valuesB<-valuesB[!is.na(valuesB)]

valuesB<-sort(valuesB, decreasing=FALSE)


cuts <- bins(valuesB, target.bins = 9, minpts = 1)

cuts$breaks <- bins.getvals(cuts)

mybins <- c(min(valuesB), as.integer(cuts$breaks[[2]]),as.integer(cuts$breaks[[3]]),as.integer(cuts$breaks[[4]]),as.integer(cuts$breaks[[5]]),as.integer(cuts$breaks[[6]]),as.integer(cuts$breaks[[7]]),as.integer(cuts$breaks[[8]]),max(valuesB))

mypalette <- colorBin( palette="Reds", domain=world_spdf@data$Frequency, na.color="transparent", bins=mybins)

# Prepare the text for tooltips:
mytext <- paste(
  "Country: ", world_spdf@data$NAME,"<br/>", 
  "Tweet Place: ", round(world_spdf@data$Frequency, 2), 
  sep="") %>%
  lapply(htmltools::HTML)

# Final Map
leaflet(world_spdf) %>% 
  addTiles()  %>% 
  setView( lat=10, lng=0 , zoom=2) %>%
  addPolygons( 
    fillColor = ~mypalette(Frequency), 
    stroke=TRUE, 
    fillOpacity = 0.9, 
    color="white", 
    weight=0.3,
    label = mytext,
    labelOptions = labelOptions( 
      style = list("font-weight" = "normal", padding = "3px 8px"), 
      textsize = "13px", 
      direction = "auto"
    )
  ) %>%
  addLegend( pal=mypalette, values=~Frequency, opacity=0.9, title = "Tweet Place", position = "bottomleft" )

############# This is the code to plot the table with the counts ########


library(DT)
datatable(total, options = list(autoWidth = TRUE, order = list(list(1, 'desc'))), rownames = FALSE, 
          colnames = c('Country Code', 'Frequency'), 
          caption = 'Table 1: Number and place of Tweets with place location enabled.'
          )
