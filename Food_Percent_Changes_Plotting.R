ggplot(foodchanges, aes(x = Year, y = Percentage_Change, group = 1)) + 
  geom_line(color = "blue", linewidth = 1.5) + 
  scale_x_continuous(breaks = seq(2000, 2024, by = 5)) + 
  scale_color_brewer(palette = "Dark2") +
  labs(
    title = "Year Over Year Percentage Change in Total Food Import Value", 
    x = "Year", 
    y = "Percentage Change (%) from Previous Year", 
    alt = "The graph shows that the percentage changes from most years were increasing, most years the changes were positive, being around 5-10%, although there are some outliers, like 2009 which had the previous several years around 10%, but 2009 dropped all the way down to -9%, which was the lowest it got in all of the data. 2021 is also an outlier year which had the previous several years having pretty low changes, but 2021 rose all the way up to 18% which was the highest recorded in all of the data, and then dropping down to -1% in 2023. "
  ) + 
  theme_minimal()