# Recode school closing
counties <- counties %>%
  mutate(school_closing=recode(school_closing,
    '0' = "No measures",
    '1' = "Recommended",
    '2' = "Required some",
    '3' = "Required all"))

# Make columns factors that should be
counties <- counties %>%
  mutate(across(10:20, factor))

# Create countries_for_join to lockdowns
cfj <- countries %>% 
  group_by(administrative_area_level_1) %>% 
  filter(date == max(date))


# Create a filtered lockdowns dataset while cleaning names
lfj <- lockdowns %>% 
  clean_names() %>% 
  group_by(country_region) %>% 
  filter(date == max(date))

# Join the two
joined_lockedowns <- cfj %>% inner_join(lfj, by = c("administrative_area_level_1" = "country_region")) %>%
  mutate(across(12:22, factor))

# Display the new tibble
trimmed_lockdown <- joined_lockedowns %>% select(date.x, tests:contact_tracing, administrative_area_level_1, date.y, type)

# Look at the new tibble
glimpse(trimmed_lockdown)

