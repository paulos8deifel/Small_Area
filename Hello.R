# Einstellung
#install.packages("gitcreds")
#install.packages("foreign")
library(gitcreds)
library(haven)
library(rdhs)
gitcreds_set()

#Erster Überblick

# Vivian Working Directory
#setwd("~/Studium/Master/2. Semester/Small Area/Daten")

#Paulos Working Directory
#setwd("/Users/paulo/Documents/Dokumente - MacBook Air (10)/Dokumente/Bamberg/Semester 2/Small Area Estimation/RW_2019-20_DHS_06172024_1312_215365")
rwanda <- read.csv("RWHR81FL.DAT", header = FALSE, sep = " ")
View(rwanda)
length(rwanda)

# Daten einlesen
## set up your credentials
set_rdhs_config(email = "paulos.deifel@uni-bamberg.de",
                project = "Small Area Estimation Rwanda DHS, 2019-20 - Final Report Data",
                cache_path = "~/Studium/Master/2. Semester/Small Area/Daten")
# the first time we call this function, rdhs will make the API request
microbenchmark::microbenchmark(dhs_surveys(surveyYear = 2019-20),times = 1)
# download datasets
downloads <- get_datasets(dataset$RWPR81FL)
client_dhs
setwd