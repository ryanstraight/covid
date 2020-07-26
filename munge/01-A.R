# Example preprocessing script.
# Everything loaded at start as tibbles, so no need to format as such
# Load the data - happens in data/data.url

# Strings are set as factors in config/global.dcf
# Setting date to date format
raw$date <- lubridate::as_date(raw$date)

# Create some USA tibbles and do some cleanup
usa_raw <- raw %>% filter(iso_code == "USA") # create USA set
usa_start <- usa_raw %>% mutate_if(is.numeric, replace_na, replace = 0) %>% # set all numeric NA to 0
    filter(date >= "2020-01-21") # start set on day with first identified case



