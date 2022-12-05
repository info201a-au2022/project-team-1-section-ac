# Load libraries so they are available
library("shiny")
source("app_ui.R")
source("app_sever.R")

shinyApp(ui = ui, server = server)