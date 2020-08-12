library(tidyverse)
library(purrr)
library(rmarkdown)


# read the data
# origin of the data
# https://www.kaggle.com/fivethirtyeight/fivethirtyeight-comic-characters-dataset

datapath <- "./data/"
marvel <- "marvel-wikia-data.csv"
marveldata <- paste(datapath, marvel, sep="")
marvelcsv <- read_csv(marveldata)

#convert these things to factor
columns <- c("ALIGN", "EYE", "HAIR", "SEX", "GSM", "ALIVE")

#next step: to add a function that goes through the columns list and makes the  transformation into factor a function, using the example below:
# purrr:map() something something

marvelcsv$ALIGN <- as.factor(marvelcsv$ALIGN)

#so, in purrr, we give the name fo the vector to transform, use pipes, and transfor those.
marvelcsv %>% map(as.factor, columns)

glimpse(marvelcsv)
