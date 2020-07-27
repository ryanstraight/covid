# Load COVID19 data by country
countries <- covid19()

# Merge with GMR
gmr <- "https://www.gstatic.com/covid19/mobility/Global_Mobility_Report.csv"
countries <- covid19(gmr = gmr)

# Load it by state, much more granular
states <- covid19(level = 2)

# Get counties in US
counties <- covid19("US", level = 3)
