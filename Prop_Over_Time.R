ggplot(
  food_imports_prop_graph_data,
  aes(x = year, y = proportion, group = Country, color = Country)
) +
  geom_line() +
  geom_point() +
  #scale_y_continuous(labels = +
  scale_x_continuous(breaks = sort(unique(food_imports_prop_graph_data$year))) +
  labs(
    title = "The Top Ten Food Import Countries Over Time",
    x = "Year",
    y = "Proportion (%)",
    color = "Country"
  ) +
  theme_minimal() +
  theme(legend.position = "bottom")