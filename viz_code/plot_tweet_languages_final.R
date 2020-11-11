##################################################################################
### This file generates the plots for the language statistics
### as seen in http://www.panacealab.org/covid19/
### Code by Juan M. Banda, modified from other sources.
### Code is not very clean as of now, need to remove some of the hardcoded elements
### The Input TSV format for this plot is a set of files containing two columns
### tab separated in the form:
### tweet_lang TAB frequency
### 
### Note these files are not included in the download but can be generated from 
### the dataset files.
###
### Note you will also need to generate the language code mappings: language_code_mappings.csv
### Conversion from 2 digit codes to 3 digit codes using https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
### From 3 digit codes to country using: https://www.ethnologue.com/codes/download-code-tables
###
### The Code to generate the interactive table with counts is at the end of this
### file.
################################################################################

library(ggplot2)
library(dplyr)
library(tidyr)
library(leaflet)
library(maps)
library(ggthemes)
library(rworldmap)
library(ggflags)
library(forcats)
library(plotly)

options(stringsAsFactors = FALSE)

path = "Y:/COVID19-Analysis/stats_clean/"
total<-""
file.names <- dir(path, pattern ="language_statistics.tsv|language-statistics.tsv")
for(i in 1:length(file.names)){
  file <- read.csv(paste(path, file.names[i], sep=""),header=TRUE, sep="\t", stringsAsFactors=FALSE)
  if (nrow(file)>1) {
    total <- rbind(total, file)
  }
}

path = "Y:/COVID19-Analysis/stats_rt/"
file.names <- dir(path, pattern ="language_statistics.tsv|language-statistics.tsv")
for(i in 1:length(file.names)){
  file <- read.csv(paste(path, file.names[i], sep=""),header=TRUE, sep="\t", stringsAsFactors=FALSE)
  if (nrow(file)>1) {
    total <- rbind(total, file)
  }
}


total <- total %>% mutate_at(c("tweet_id"), as.numeric)
total <- total %>% group_by(tweet_lang) %>% summarise(Frequency = sum(tweet_id))

total<-total[!(total$tweet_lang==''),]
total<-total[!(total$tweet_lang=='False'),]
total<-total[!(total$tweet_lang=='True'),]

total$tweet_lang <- gsub('in', 'id', total$tweet_lang)
total$tweet_lang <- gsub('iw', 'he', total$tweet_lang)

mappings <- read.csv("Y:/COVID19-Analysis/language_code_mappings.csv",header=TRUE, sep=",", stringsAsFactors=FALSE)
colnames(mappings) <- c("tweet_lang", "l_name",'flag')

mixedcoding<-merge(x = total, y = mappings, by = "tweet_lang", all.x = TRUE)

mixedcoding <- mixedcoding[order(-mixedcoding$Frequency),]

mixedcoding$tweet_lang[mixedcoding$tweet_lang == 'ja'] <- 'jp'
mixedcoding$flag[mixedcoding$tweet_lang == 'jp'] <- 'JP'
mixedcoding$tweet_lang[mixedcoding$tweet_lang == 'hi'] <- 'in'
mixedcoding$flag[mixedcoding$tweet_lang == 'in'] <- 'IN'
mixedcoding$flag[mixedcoding$tweet_lang == 'ca'] <- 'ES'
mixedcoding$flag[mixedcoding$tweet_lang == 'ar'] <- 'AE'
mixedcoding$flag[mixedcoding$tweet_lang == 'zh'] <- 'CN'
mixedcoding$flag[mixedcoding$tweet_lang == 'ko'] <- 'KR'
mixedcoding$flag[mixedcoding$tweet_lang == 'ur'] <- 'PK'
mixedcoding$flag[mixedcoding$tweet_lang == 'el'] <- 'GR'
mixedcoding$flag[mixedcoding$tweet_lang == 'et'] <- 'EE'
mixedcoding$flag[mixedcoding$tweet_lang == 'sv'] <- 'SE'
mixedcoding$flag[mixedcoding$tweet_lang == 'fa'] <- NA
mixedcoding$flag[mixedcoding$tweet_lang == 'da'] <- 'DK'
mixedcoding$flag[mixedcoding$tweet_lang == 'te'] <- 'IN'
mixedcoding$flag[mixedcoding$tweet_lang == 'cs'] <- 'CZ'
mixedcoding$flag[mixedcoding$tweet_lang == 'vi'] <- 'VN'
mixedcoding$flag[mixedcoding$tweet_lang == 'uk'] <- 'UA'
mixedcoding$flag[mixedcoding$tweet_lang == 'sl'] <- 'SI'
mixedcoding$flag[mixedcoding$tweet_lang == 'UK'] <- 'UA'
mixedcoding$flag[mixedcoding$tweet_lang == 'kn'] <- 'IN'
mixedcoding$flag[mixedcoding$tweet_lang == 'gu'] <- 'IN'
mixedcoding$flag[mixedcoding$tweet_lang == 'bn'] <- 'BD'
mixedcoding$flag[mixedcoding$tweet_lang == 'or'] <- 'IN'
mixedcoding$flag[mixedcoding$tweet_lang == 'ml'] <- 'IN'
mixedcoding$flag[mixedcoding$tweet_lang == 'ne'] <- 'NP'
mixedcoding$flag[mixedcoding$tweet_lang == 'sr'] <- 'SI'
mixedcoding$flag[mixedcoding$tweet_lang == 'si'] <- 'LK'
mixedcoding$flag[mixedcoding$tweet_lang == 'he'] <- 'IL'
mixedcoding$flag[mixedcoding$tweet_lang == 'pa'] <- 'IN'
mixedcoding$flag[mixedcoding$tweet_lang == 'dv'] <- 'MV'
mixedcoding$flag[mixedcoding$tweet_lang == 'am'] <- 'ET'
mixedcoding$flag[mixedcoding$tweet_lang == 'my'] <- 'MM'
mixedcoding$flag[mixedcoding$tweet_lang == 'sd'] <- 'IN'
mixedcoding$flag[mixedcoding$tweet_lang == 'ka'] <- 'GE'
mixedcoding$flag[mixedcoding$tweet_lang == 'hy'] <- 'AM'
mixedcoding$flag[mixedcoding$tweet_lang == 'km'] <- 'KH'
mixedcoding$flag[mixedcoding$tweet_lang == 'lo'] <- 'LA'
mixedcoding$flag[mixedcoding$tweet_lang == 'bo'] <- 'CN'
mixedcoding$flag[mixedcoding$tweet_lang == 'ug'] <- 'CN'
mixedcoding$flag[mixedcoding$tweet_lang == 'en'] <- 'GB'

mixedcoding$l_name[mixedcoding$tweet_lang == 'und'] <- 'NA'

mixedcoding <- mixedcoding[mixedcoding$tweet_lang != "ckb", ]

mixedcoding$flag <- tolower(mixedcoding$flag)

mixedcoding <- mixedcoding[order(-mixedcoding$Frequency),]

mixedcoding %>%
  mutate(name = fct_reorder(mixedcoding$l_name, mixedcoding$Frequency)) %>%
  ggplot(aes(x = name, y = mixedcoding$Frequency )) +
    geom_bar(stat = "identity") +
    geom_flag(y = -1, aes(country = tolower(mixedcoding$flag)), size = 4) +
    scale_y_continuous(trans='log2') +
    xlab("Languages") +
    ylab("Number of Tweets") +
    theme_bw() +
    theme(legend.title = element_blank()) +
    coord_flip()

###############################################################################
### Code for the interactive table with language and frequencies

library(DT)
drops <- c("flag", "l_name")
mixedcoding<-mixedcoding[ , !(names(mixedcoding) %in% drops)]

datatable(mixedcoding, options = list(order = list(list(1, 'desc'))), rownames = FALSE, 
          colnames = c('Language Code', 'Frequency'),
          caption = 'Table 1: Languages and their frequencies on the dataset.'
)
