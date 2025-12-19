foodCanada <- foods %>%
  filter(Country == "CANADA") %>%
  filter(Commodity %in% c("Total dairy products", "Total grains and products", "Total vegetables and preparations", "Total red meats, fresh and frozen")) %>%
  mutate(FoodValue = (FoodValue / 1000000)) %>%
  mutate(Year = as.numeric(Year)) %>%
  select(-Country, -Category)

