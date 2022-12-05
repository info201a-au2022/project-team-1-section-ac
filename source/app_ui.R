library(shiny)
library(plotly)

map_sidebar_content <- sidebarPanel(
  selectInput("mapvar",
              label = "Variable to Map",
              choices = list(
                "Injured" = "Injured",
                "Fatalities" = "Fatalities")
  )
)
map_main_content <- mainPanel(
  plotlyOutput("map")
)
map_panel <- tabPanel(
  "Map",
  titlePanel("US Mass Shooting"),
  sidebarLayout(
    map_sidebar_content,
    map_main_content
  )
)

ui <- navbarPage(
  "US Mass Shooting",
  map_panel)
