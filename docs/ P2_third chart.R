
victim_graph <- function() {
  ggplot(data = victim_table) +
  geom_col(mapping = aes(x = victum_type, y = victum_number))
}
victim_graph()