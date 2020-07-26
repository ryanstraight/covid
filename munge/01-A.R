# Example preprocessing script.
# Everything loaded at start as tibbles, so no need to format as such
# Load the data - happens in data/data.url

# Make countries factors and dates dates
raw$iso_code <- as.factor(raw$iso_code)
raw$continent <- as.factor(raw$continent)
raw$location <- as.factor(raw$location)
raw$date <- lubridate::as_date(raw$date)


usa_raw <- raw %>% filter(iso_code == "USA") # create USA set
usa_start <- usa_raw %>% mutate_if(is.numeric, replace_na, replace = 0) %>% # set all numeric NA to 0
    filter(date >= "2020-01-21") # start set on day with first identified case



