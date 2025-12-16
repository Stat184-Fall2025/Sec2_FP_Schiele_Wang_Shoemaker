food_imports_country <- FoodImports %>%
  filter(UOM == 'Million $' & Country != 'WORLD') %>%
  group_by(Country,YearNum) %>%
  summarize(total_imports = sum(FoodValue))

food_imports_yearly <- FoodImports %>%
  filter(YearNum != 'means' & YearNum != 'means10years') %>%
  group_by(YearNum) %>%
  summarize(yearly_imports = sum(FoodValue))

food_imports_prop <- food_imports_country %>%
  left_join(food_imports_yearly, by = 'YearNum') %>%
  mutate(proportion = (total_imports/yearly_imports) * 100)

top_ten_countries <- food_imports_prop %>%
  group_by(Country) %>%
  summarise(avg = mean(proportion)) %>%
  arrange(desc(avg)) %>%
  mutate(avg = percent(avg/100))

top_ten <- top_ten_countries$Country[1:10]

food_imports_prop_graph_data <- food_imports_prop %>%
  filter(Country %in% top_ten) %>%
  mutate(year = as.numeric(YearNum))