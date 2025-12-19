MostValFoodType <- FoodImports %>% 
  filter(UOM == 'Million $') %>%
  group_by(Commodity) %>% # group all cases where country is the same
  summarize(
    TotalVal = sum(FoodValue)) %>%
  arrange(desc(TotalVal)) # make countries in table descend based on Total Food Value, so highest values at the top, and lowest at the bottom

kable(head(MostValFoodType, 10), caption = "Figure 3: Data set where each case is a Type of Import, listing the Total Food Value that has been imported in Millions of US dollars") 