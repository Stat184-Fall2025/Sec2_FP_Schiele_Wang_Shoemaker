ggplot(foodMostValue, aes(x = Country, y = TotalFoodValue)) +
  geom_bar(stat = "identity", fill = "navy") +
  labs(
    title = "Figure 3: Plot 2: Top 10 by Total Food Import Value in Billions of US Dollars, From Years 1999 to 2024",
    x = "Country",
    y = "Total Food Import Value in Billions of US Dollars",
    alt = "Canada and Mexico are by far the 2 countries with the highest total food import values with many countries from all over the world coming after them."
  )