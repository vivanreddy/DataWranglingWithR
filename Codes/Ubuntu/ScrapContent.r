library("rvest")
library("dplyr")
google<-read_html("http://www.mathrubhumi.com/")

selection <- html_nodes(google,'.ltst_title')
html_text(selection)
