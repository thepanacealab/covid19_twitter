##################################################################################
### This file generates the plots for the coordinates from tweets that have it
### as seen in http://www.panacealab.org/covid19/
### Code by Juan M. Banda, modified from other sources.
### Code is not very clean as of now
### The Input TSV format for this plot is a set of files containing two columns
### tab separated in the form:
### tweet_coordinates TAB frequency
### 
### Note these files are not included in the download but can be generated from 
### the hydrated tweets.
###
################################################################################

library(ggplot2)
library(dplyr)
library(tidyr)
library(leaflet)
library(maps)
library(ggthemes)
library(htmlwidgets)
library(htmltools)


options(stringsAsFactors = FALSE)

path = "Y:/COVID19-Analysis/stats_clean/"
total<-""
file.names <- dir(path, pattern ="coord_statistics.tsv|coord-statistics.tsv")
for(i in 1:length(file.names)){
  file <- read.csv(paste(path, file.names[i], sep=""),header=TRUE, sep="\t", stringsAsFactors=FALSE)
  if (nrow(file)>1) {
    total <- rbind(total, file)
  }
}

path = "Y:/COVID19-Analysis/stats_RT/"
file.names <- dir(path, pattern ="coord_statistics.tsv|coord-statistics.tsv")
for(i in 1:length(file.names)){
  file <- read.csv(paste(path, file.names[i], sep=""),header=TRUE, sep="\t", stringsAsFactors=FALSE)
  if (nrow(file)>1) {
    total <- rbind(total, file)
  }
}

total <- total %>% mutate_at(c("tweet_id"), as.numeric)

total <- total %>% group_by(tweet_coordinates) %>% summarise(Frequency = sum(tweet_id))

#Remove all crap counts for non-coordiante objects
keep <- dplyr::filter(total, grepl('\\[', tweet_coordinates ))


keep <- separate(data = keep, col = tweet_coordinates, into = c("long", "lat"), sep = "\\,")
keep$long <- gsub('\\[', '', keep$long)
keep$lat <- gsub('\\]', '', keep$lat)
keep <- keep %>% mutate_at(c("lat", "long", "Frequency"), as.numeric)

keep<-head(keep,-2)

# plot points on top of a leaflet basemap

rr <- tags$div(
  HTML('<p>Tweets with geo-coordinates</p>')
)  

site_locations_base <- leaflet(keep) %>%
  addProviderTiles("CartoDB.Positron") %>%
  addCircleMarkers(lng = ~long, lat = ~lat, popup = ~Frequency, radius = ~ sqrt(Frequency), stroke = FALSE) %>%
  addControl(rr, position = "bottomleft")
site_locations_base %>% setView(lng = mean(keep$long), lat = mean(keep$lat), zoom = 2)
  
  #setView(50.5010789, 4.4764595, zoom = 1)



