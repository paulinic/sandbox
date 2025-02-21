#new script after failing the old one 
1+1

library(rvest)
library(tidyverse)
library(httr)

#browseURL("https://www.nzz.ch/robots.txt")
#download.file("https://www.nzz.ch", destfile = "nzz.html")

#url <- "https://www.20min.ch/"

read_html(url) %>% 
  html_elements(css = ".kilkaya-teaser-title") %>%
  html_text()

url <- "https://www.unilu.ch/"
page <- read_html(url)

page_new <- httr::GET(url)
content(page_new)
