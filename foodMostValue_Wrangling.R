foodMostValue <- foods %>% 
  mutate(FoodValue = (FoodValue / 1000000000)) %>% # divide all food values by 1 billion so when food values are displayed, they appear nicer
  group_by(Country) %>% # group all cases where country is the same
  summarize( 
    TotalFoodValue = sum(FoodValue) # each case that is grouped together, adds their Food Values together to get the total food value for that country
  ) %>%
  arrange(desc(TotalFoodValue)) %>% # make countries in table descend based on Total Food Value, so highest values at the top, and lowest at the bottom
  slice_head(n = 10) # make the data set only be the top 10 values

kable(head(foodMostValue, 10), caption = "Figure 2: Data set where each case is a Country, listing the Total Food Value that has been imported in billions of US dollars") 
