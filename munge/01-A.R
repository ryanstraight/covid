# Example preprocessing script.
# Everything loaded at start as tibbles, so no need to format as such
# Load the data - happens in data/data.url

# Make countries factors
raw$iso_code <- as.factor(raw$iso_code)
raw$continent <- as.factor(raw$continent)
raw$location <- as.factor(raw$location)
raw$date <- lubridate::as_date(raw$date)

# create USA frame
usa <- raw %>% filter(iso_code == "USA")

usa

