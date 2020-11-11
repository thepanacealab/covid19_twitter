##################################################################################
### This file generates the dataset plots for both the clean and the full datasets
### as seen in http://www.panacealab.org/covid19/
### Code by Juan M. Banda, modified from other sources.
### Code is not very clean as of now
### The Input CSV format for this plot is a file containing two columns, comma separated in the form:
### date (in YYYY-MM-DD format), frequency
### same for the full dataset.
################################################################################

library(dygraphs)
library(xts)
library(htmlwidgets)

############# Clean Dataset ##############################
file <- read.csv('Y:/COVID19-Analysis/v35_dataset_clean.csv', sep=",",header=TRUE, stringsAsFactors=FALSE)
colnames(file) <- c("t_date", "count")
file$t_date <- as.Date(file$t_date, format = "%m/%d/%Y")

valueFormatter<-"function formatValue(v) {
var suffixes = ['', 'K', 'M', 'G', 'T'];
  if (v < 1000) return v;
  var magnitude = Math.ceil(String(Math.floor(v)).length / 3-1);
  if (magnitude > suffixes.length - 1)
    magnitude = suffixes.length - 1;
  return String(Math.round(v / Math.pow(10, magnitude * 3), 2)) +suffixes[magnitude]}"

# Then you can create the xts format, and thus use dygraph
don <- xts(x = file$count, order.by = file$t_date)

# Make the chart
p <- dygraph(don, main = "Number tweets per day - clean dataset") %>% 
  dySeries("V1", label = "Tweets ") %>%
  dyAxis("y", logscale = TRUE ,valueFormatter = 'function(d){return d.toString().replace(/\\B(?=(\\d{3})+(?!\\d))/g, ",");}',
axisLabelFormatter = 'function(d){return d.toString().replace(/\\B(?=(\\d{3})+(?!\\d))/g, ",");}') %>%
  dyOptions(fillGraph = TRUE, fillAlpha = 0.4)
p

############# FULL Dataset ##############################

file <- read.csv('Y:/COVID19-Analysis/v35_dataset_full.csv', sep=",",header=TRUE, stringsAsFactors=FALSE)
colnames(file) <- c("t_date", "count")
file$t_date <- as.Date(file$t_date, format = "%m/%d/%Y")

# Then you can create the xts format, and thus use dygraph
don <- xts(x = file$count, order.by = file$t_date)

# Make the chart
p <- dygraph(don, main = "Number tweets per day - Full dataset") %>% 
  dySeries("V1", label = "Tweets ") %>%
  dyAxis("y", logscale = TRUE ,valueFormatter = 'function(d){return d.toString().replace(/\\B(?=(\\d{3})+(?!\\d))/g, ",");}',
         axisLabelFormatter = 'function(d){return d.toString().replace(/\\B(?=(\\d{3})+(?!\\d))/g, ",");}') %>%
  dyOptions(fillGraph = TRUE, colors = c("red","blue"), fillAlpha = 0.4)
p
