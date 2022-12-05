#Table
library(readr)
library(tidyverse)
library(dplyr)
Mass_Shootings_Dataset_Ver_2 <- read_csv("~/Documents/info201/Siyuanji-s/project-team-1-section-ac/data/US mass shooting/Mass Shootings Dataset Ver 2.csv")

Mass_Shootings_Dataset_Ver_5 <- read_csv("~/Documents/info201/Siyuanji-s/project-team-1-section-ac/data/US mass shooting/Mass Shootings Dataset Ver 5.csv")
Mass_Shootings_Dataset <- read_csv("~/Documents/info201/Siyuanji-s/project-team-1-section-ac/data/US mass shooting/Mass Shootings Dataset.csv")

mass_shooting1 <- data.frame(Mass_Shootings_Dataset_Ver_5$Date, Mass_Shootings_Dataset_Ver_5$Location, Mass_Shootings_Dataset_Ver_5$Target, Mass_Shootings_Dataset_Ver_5$Cause)


colnames(mass_shooting1) <- c("Date", "Location","Target","Cause")

mass_shooting2 <- data.frame(Mass_Shootings_Dataset_Ver_2$Date, Mass_Shootings_Dataset_Ver_2$Injured)
colnames(mass_shooting2) <- c("Date", "Injured")


mass_shooting3 <- data.frame(Mass_Shootings_Dataset$Date, Mass_Shootings_Dataset$Race, Mass_Shootings_Dataset$`Mental Health Issues`, Mass_Shootings_Dataset$Gender)
mass_shooting3
colnames(mass_shooting3) <- c("Date", "Race","Mental","Gender")


mass_shooting_table <- left_join(mass_shooting1, mass_shooting2)
mass_shooting_table


mass_shooting_table_final <- left_join(mass_shooting_table, mass_shooting3)









