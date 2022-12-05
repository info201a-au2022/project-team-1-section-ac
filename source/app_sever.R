library(dplyr)
library(tidyverse)

df <- read.csv('./data/map_data.csv', stringsAsFactors = FALSE)
state_codes <- read.csv('./data/state_code.csv', stringsAsFactors = FALSE)
source('build_map.R')

joined_data <- left_join(df, state_codes, by="state")

server <- function(input, output) { 
  output$map <- renderPlotly({ 
    return(build_map(joined_data, input$mapvar))
  }) 
}
