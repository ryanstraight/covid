# COVID

This repository is a work in progress for MIS 545 - Big Data. It looks at the COVID-19 data using the COVID19 package.

It uses the R package ProjectTemplate and is mainly written in TidyVerse grammar. 

Currently am working on:

1. Comparing case increase to lockdown type and date
1. Examining cancelled events and transport closings to date of lockdown
1. Doing other exploratory work

You can explore the project by doing the following:

1. Download the repo into a folder
1. Run the Rproj file
1. Make sure you have the `ProjectTemplate` package installed.
1. Run the following in the console:

```
library('ProjectTemplate')
load.project()
```

Notes:

+ Adding governors and their political parties to explore as an outcome based on COVID-19 state predictors like school closings, etc
  + https://raw.githubusercontent.com/CivilServiceUSA/us-governors/master/us-governors/data/us-governors.csv
+ Adding code chunks from external R scripts into an Rmd file: https://bookdown.org/yihui/rmarkdown-cookbook/read-chunk.html
+ R code for figuring out the entropy: `-((2/4)*log2(2/4) + (2/4)*log2(2/4))`
  + This is representive of the $-\sum P(x) \log2 P(x)$ equation.