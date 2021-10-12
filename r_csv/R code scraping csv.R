setwd('C:/Users/T460S/st2195_assignment_2/r_csv')
library(rvest)
library(dplyr)
link = "https://en.wikipedia.org/wiki/Comma-separated_values"
page = read_html(link)
table = page %>% html_nodes(xpath='//*[@id="mw-content-text"]/div[1]/table[2]') %>% html_table()
data = data.frame(table)
write.csv(data,"C:/Users/T460S/st2195_assignment_2/r_csv/data.csv", row.names=FALSE)