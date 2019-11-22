####################################
#### Exploratory data analysis
####################################

library(tidyverse)
library(tibble)

cornell <- readRDS("cornell.RDS")

boxplot(as.numeric(str_sub(cornell$track.album.release_date, start = 1, end = 4))) + title("Release years of Cornell Pep Band songs")
