library(plotly)
library(stringr)

build_map <- function(data, map.var) {
  l <- list(color = toRGB("white"), width = 2)
  g <- list(
    scope = 'usa',
    projection = list(type = 'albers usa'),
    showlakes = TRUE,
    lakecolor = toRGB('white')
  )
  var.equation <- paste0('~', map.var)
  p <- plot_geo(data, locationmode = 'USA-states') %>%
    add_trace(
      z = data[,map.var], text = ~state, locations = ~code,
      color = data[,map.var], colors = 'Purples'
    ) %>%
    colorbar(title = "Color Title") %>%
    layout(
      title = str_to_title(map.var),
      geo = g
    )
  return(p)
}