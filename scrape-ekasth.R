# git pull!

library(rvest)
library(tidyverse)

url <- "http://www.ekasth.gr/champs/2012/champ200.htm"

# read in tables
webpage <- read_html(url)
tbls <- html_nodes(webpage, "table")

results <- html_table(tbls[[2]])
colnames(results) <- (c("date", "time", "venue", "teams", "score", "referee_1", "referee_2"))

results <- results %>% 
  filter(score != "Σκορ")