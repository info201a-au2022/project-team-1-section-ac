library(tidyverse)
library(dplyr)
library(plyr)
library(ggplot2)
library(plotly)
library(leaflet)

df <- read.csv("Mass Shootings Dataset Ver 5.csv")

# Race

unique(df$Race)
num_race_white <- sum(df$Race == "White",
                      df$Race == "White American or European American",
                      df$Race == "White American or European American/Some other Race",
                      df$Race == "white",
                      na.rm = TRUE)

num_race_balck <- sum(df$Race == "Black",
                      df$Race == "Black American or African American/Unknown",
                      df$Race == "Black American or African American",
                      df$Race == "black",
                      na.rm = TRUE)

num_race_asian <- sum(df$Race == "Asian", 
                      df$Race == "Asian American",
                      df$Race == "Asian American/Some other race",
                      na.rm = TRUE)
num_race_native <- sum(df$Race == "Native American", 
                       df$Race == "Native American or Alaska Native",
                       na.rm = TRUE)
num_race_unknown <- sum(df$Race == "Unknown", 
                        df$Race == "Some other race",
                        df$Race == "unclear",
                        df$Race == "Other", 
                        df$Race == "Two or more races",
                        na.rm = TRUE)
race_table <- data.frame(Race = c("White", "Black", "Asian", "Native", "Unknown"),
                         num_injured = c(num_race_white,num_race_balck,
                                         num_race_asian,num_race_native,num_race_unknown))



# Pie Chart of Race
pie_plot_race <- function() {
  slices <- c(144, 85, 18, 3, 66)
  lbls <- c("White", "Black", "Asian", "Native", "Unknown")
  pct <- round(slices/sum(slices)*100)
  lbls <- paste(lbls, pct)
  lbls <- paste(lbls,"%",sep="")
  pie(slices,labels = lbls, col=rainbow(length(lbls)),
      main="Pie Chart of Race")}
pie_plot_race()

# Gender
num_gender_male <- sum(df$Gender == "Male",
                       df$Gender == "M", na.rm = TRUE)

num_gender_female <- sum(df$Gender == "Female", na.rm = TRUE)

num_gender_female_male <- sum(df$Gender == "Male/Female",
                              df$Gender == "M/F", na.rm = TRUE)

num_gender_unknown <- sum(df$Gender == "Unknown", na.rm = TRUE)

lbls <- c("Male", "Female", "Male/Female", "Unknown")
slices <- c(num_gender_male, num_gender_female, num_gender_female_male, num_gender_unknown)


gender_table <- data.frame(Gender = c("Male", "Female", "Male/Female", "Unknown"),
                           num_injured = c(num_gender_male, num_gender_female, 
                                           num_gender_female_male, num_gender_unknown))

# Pie Chart of Gender
pie_plot_gender <- function() {
  slices <- c(292, 5, 5, 21)
  lbls <- c("Male", "Female", "Male/Female", "Unknown")
  pct <- round(slices/sum(slices)*100)
  lbls <- paste(lbls, pct)
  lbls <- paste(lbls,"%",sep="")
  pie(slices,labels = lbls, col=rainbow(length(lbls)),
      main="Pie Chart of Gender")}
pie_plot_gender()
#Chart data
df$Year <- format(as.Date(df$Date, format="%d/%m/%Y"),"%Y")
df$location <- sub('.*,\\s*', '', df$Location)
colnames(df)[12] <- ("victims")

map_data <- df %>%
  select(location, victims) %>%
  drop_na()
map_data <- map_data[-c(1, 2, 3, 4, 5, 6, 11, 114, 12),]
final_data <- map_data %>% 
  group_by(location, victims)

final_map_data <-ddply(final_data, "location", transform, victims = sum(victims))
final_map_data <- subset(final_map_data, !duplicated(location))
map_data <- left_join(df, final_map_data, by = c("location")) %>%
  select(Longitude, Latitude, location, victims.y) %>%
  drop_na()
# Chart
map_distribution <- function() {
  map <- leaflet(map_data)  %>% 
    addTiles() 
  map %>% addCircleMarkers(
    lat = ~Latitude,
    lng = ~Longitude,
    popup = ~location,
    stroke = FALSE,
    radius = 3,
    fillOpacity = 0.3
  )
}
map_distribution()
