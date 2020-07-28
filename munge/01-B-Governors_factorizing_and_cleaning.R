# Factorize useful variables in governors_raw and clean it
governors <- governors_raw %>%
  mutate(across(c("party", "gender", "ethnicity", "religion"), factor))
