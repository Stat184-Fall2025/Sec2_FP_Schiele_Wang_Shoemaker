foods <- foodraw %>%
  # Filter out all cases that have unwanted values
  filter(!Country %in% c("REST OF WORLD", "WORLD", "WORLD (Quantity)")) %>%
  filter(UOM %in% c("1000", "Million $")) %>%
  filter(!Category %in% c("Food dollars", "Food volume", "Prices")) %>%
  filter(SubCategory == "Foods") %>%
  filter(!YearNum %in% c("means", "means10years")) %>%
  # Multiply 1000 to FoodValue value if UOM value is 1000 or multiply by 1000000 if  UOM value is Million $
  mutate(FoodValue = FoodValue * ifelse(UOM == "1000", 1000, 1000000)) %>%
  select(-UOM, -RowNumber, -SubCategory) %>%
  rename(Year = YearNum)