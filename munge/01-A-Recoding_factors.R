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
