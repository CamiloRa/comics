library(tidyverse)
library(purrr)

datapath <- "./data/"
marvel <- "marvel-wikia-data.csv"
marveldata <- paste(datapath, marvel, sep="")
marvelcsv <- read_csv(marveldata)
columns <- c("ALIGN", "EYE", "HAIR", "SEX", "GSM", "ALIVE")

#next step: to add a function that goes through the columns list and makes the  transformation into factor ftromusing a function, using the example below:

marvelcsv$ALIGN <- marvelcsv$ALIGN  %>% as_factor()

str(marvelcsv)
