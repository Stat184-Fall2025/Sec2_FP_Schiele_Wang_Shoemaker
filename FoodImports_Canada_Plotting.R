ggplot(foodCanada, aes(x = Year, y = FoodValue, color = Commodity, group = Commodity)) +
  geom_line(size = 1.5) + # increase line size so it is easier to see
  scale_x_continuous(breaks = seq(1999, 2024, by = 5)) + # make it so x-axis only shows every 5 years so x-axis is less cluttered
  scale_color_brewer(palette = "Dark2") + # Should make graph have a nicer palette
  labs( # rename the title, x-axis, and, y-axis, and create an alt text
    title = "Figure 1: Plot 1: Value of Food Commodities in Canada, From Years 1999 to 2024",
    x = "Year",
    y = "Food Value in Millions of Dollars",
    alt = "Dairy Products stay at a pretty constand rate over the years, whole red meats and vegetables seem to increase at a moderate rate together, but grains and products grow at a much faster and more volitile rate than everything else."
  )
