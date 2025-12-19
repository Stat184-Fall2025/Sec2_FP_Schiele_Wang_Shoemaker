foodtotals <- foods %>%
  group_by(Year) %>%
  summarise(
    value_total = sum(FoodValue)
  ) %>%
  arrange(Year)

foodchanges <- foodtotals %>%
  mutate(value_previous = lag(value_total),
         percent_change = (((value_total - value_previous) / value_previous) * 100)
  ) %>%
  filter(!is.na(percent_change)) %>%
  mutate(Year = as.numeric(Year)) %>%
  rename(Percentage_Change = percent_change) %>%
  select(Year, Percentage_Change)

kable(foodchanges, caption = "Figure 4: This table shows the percentage changes of the total imported food value to the United States during the years of 2000 to 2024")