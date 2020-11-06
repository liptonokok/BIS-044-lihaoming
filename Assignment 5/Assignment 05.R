#read csv file
library(readr)
DF_origin <- read_csv("USvideos.csv")
View(DF_origin)

if(!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)
library(dplyr)

#convert to R date object
DF_origin$trending_date <- as.Date(DF_origin$trending_date, format = c("%y.%d.%m"))
View(DF_origin)
class(DF$trending_date)

#split the column
DF_revised <- separate(DF_origin, col = publish_time, into = c("PDate","PTime"), sep = "T")
DF_revised$PDate <- as.Date(DF_revised$PDate)
DF_revised$PTime <- as.POSIXct(DF_revised$PTime)
View(DF_revised)

#Title capitalization
if(!require("stringr")) install.packages("stringr")
library(stringr)
DF_cap <- str_to_title(DF_origin$title, locale = "en")
View(DF_cap)
