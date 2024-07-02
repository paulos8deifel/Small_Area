# Einstellung
#install.packages("gitcreds")
#install.packages("foreign")
library(gitcreds)
library(haven)
library(rdhs)
gitcreds_set()
install.packages("haven") # used to open dataset with read_dta
install.packages("here") # used for path of your project. Save your datafile in this folder path.
install.packages("dplyr") # used for creating new variables
install.packages("labelled") # used for haven labelled variable creation
install.packages("pollster") # used to produce weighted estimates with topline command
library(haven)
library(here)
library(dplyr)
library(labelled)
library(pollster)
install.packages("usethis")
library(usethis)
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

# Daten 2017
rwanda2017 <- read.csv("RWHR7AFL.DAT", header = FALSE, sep = " ")
View(rwanda2017)
# Daten IR
rwandair <- read.csv("RWIR81FL.DAT", header = FALSE, sep = " ")
View(RWANDAIR)
names(RWANDAIR)
RWANDAIR <-  read_dta(here("RWIR81FL.DTA"))
setwd("~/Documents/Dokumente - MacBook Air (10)/Dokumente/Bamberg/Semester 2/Small Area Estimation/RWIR81DT")
RWANDAIR <- read_dta(here::here("RWIR81FL.DTA"))
#DATENSATZ
RWANDA <- read_dta("RWIR81FL.DTA")

View(RWANDA)
names(RWANDA)

setwd("~/Documents/Dokumente - MacBook Air (10)/Dokumente/Bamberg/Semester 2/Small Area Estimation/RWHR81DT")
RWANDAHR<- read_dta("RWHR81FL.DTA")
RWANDAPR <- read_dta("RWPR81FL.DTA")
RWANDAIR <- read_dta("RWIR81FL.DTA")
View(RWANDA2)
names(RWANDA2)

usethis::create_github_token()
install.packages("gitcreds")
gitcreds::gitcreds_set()
usethis::use_github()

