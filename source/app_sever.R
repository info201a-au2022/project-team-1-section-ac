library(dplyr)
library(tidyverse)
library(ggplot2)
source('build_map.R')
df <- read.csv('./data/map_data.csv', stringsAsFactors = FALSE)
state_codes <- read.csv('./data/state_code.csv', stringsAsFactors = FALSE)
joined_data <- left_join(df, state_codes, by="state")
data_frame <- read.csv("Mass Shootings Dataset Ver 5.csv")
year_by_year <- function() {
  section <- data_frame[c(4,10)]
#format by year (removing month and day)
  section$year <- format(as.Date(section$Date, format="%m/%d/%Y"),"%Y")
  #remove original date column
  section <- section[-c(1)]
  #group & sum by year and fatalities
  section <- group_by(section, year) %>%
    summarize(Cumulative_Fatalities = sum(Fatalities, na.rm=TRUE))
  return(section)
}

mass_shooting1 <- data_frame %>%
  select(Date, Location, Target, Cause)
get_cause_pop <- function() {
  cause_type <- mass_shooting1 %>%
    count(Cause, na.rm = T)
  return(cause_type)   
}

  


server <- function(input, output) { 
  output$map <- renderPlotly({ 
    return(build_map(joined_data, input$mapvar))
  })
  output$fatalPlot <- renderPlotly({
    fatalDf <- year_by_year() %>%
      filter(year >= input$yrVar)
    fatal_line <- ggplot(data = fatalDf,aes(x=year, y= Cumulative_Fatalities)) +
      geom_bar(stat="identity") 
    fatal_line
  })
  output$scatter <- renderPlot({
    cause_num <- get_cause_pop()
    p <- ggplot(data = cause_num) +
      geom_point(mapping = aes(x = Cause, y = n),
               size = input$size) +
      labs(x = "Type of Causes", y = "Number of Causes", title = title())
    p
  })
}
