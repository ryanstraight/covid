# Do some work to get Pima county

# Look at counties in Arizona
arizona <- counties %>% filter(
  administrative_area_level_2 == "Arizona")

# Create a snapshot of today in Pima county
today_in_pima_county <- arizona %>% filter(
  administrative_area_level_3 == "Pima") %>%
  filter(date == max(date))

glimpse(today_in_pima_county)
