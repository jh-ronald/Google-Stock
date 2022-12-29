dl <- tempfile()
download.file(
  "https://raw.githubusercontent.com/jh-ronald/Google-Stock/master/Google%20Dataset.csv",
  destfile = dl)

if(!require(tidyverse)) install.packages("tidyverse", repos = "http://cran.us.r-project.org")
if(!require(data.table)) install.packages("data.table", repos = "http://cran.us.r-project.org")
if(!require(caret)) install.packages("caret", repos = "http://cran.us.r-project.org")

library(tidyverse)
library(data.table)
library(caret)

temp <- read_csv(dl, show_col_types = "FALSE")
google <- data.table(temp)