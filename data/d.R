# Load COVID19 data by country
countries <- covid19()

# Merge with GMR
gmr <- "https://www.gstatic.com/covid19/mobility/Global_Mobility_Report.csv"
countries <- covid19(gmr = gmr)

# Load it by state, much more granular
states <- covid19(level = 2)

# Get counties in US
counties <- covid19("US", level = 3)

# Note that the lockdown.csv comes from https://www.kaggle.com/jcyzag/covid19-lockdown-dates-by-country and needs to be redownloaded to get the most recent data. Unsure how to programmatically scrape this data

# Snag governors
governors_raw <- readr::read_csv("https://raw.githubusercontent.com/CivilServiceUSA/us-governors/master/us-governors/data/us-governors.csv")
