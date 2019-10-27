library(tidyverse)
datapath <- "./data/"
marvel <- "marvel-wikia-data.csv"
marveldata <- paste(datapath, marvel, sep="")
marvelcsv <- read_csv(marveldata)

