library(rvest)

url <- "http://www.ekasth.gr/champs/2012/champ200.htm"

# read in tables
webpage <- read_html(url)
tbls <- html_nodes(webpage, "table")

results <- html_table(tbls[[2]])
