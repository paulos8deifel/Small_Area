# Einstellung
install.packages("gitcreds")
library(gitcreds)
gitcreds_set()
install.packages("foreign")
library(heaven)

#Erster Überblick

# Vivian Working Directory
#setwd("~/Studium/Master/2. Semester/Small Area/Daten")

#Paulos Working Directory
#setwd("/Users/paulo/Documents/Dokumente - MacBook Air (10)/Dokumente/Bamberg/Semester 2/Small Area Estimation/RW_2019-20_DHS_06172024_1312_215365")
rwanda_1 <- read.delim("RWHR81FL.DAT", sep = " ", header = TRUE)
View(rwanda_1)

#use rdhs ( -> ~/Library/Caches/rdhs/rdhs.json)

install.packages("devtools")
devtools::install_github("ropensci/rdhs")
library(rdhs)
set_rdhs_config(email = "paulos.deifel@stud.uni-bamberg.de",
                project = "Small Area
Estimation Rwanda DHS, 2019-20 - Final Report Data ")


rwanda <- dhs_data(countryIds = "RW", surveyYearStart = 2019, surveyYearEnd = 2020)
View(rwanda)
