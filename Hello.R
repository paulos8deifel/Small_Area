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