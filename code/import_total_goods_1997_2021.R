# author: bbaasan
# Date: May 21, 2022
# version:
# Purpose: import total goods of a coutnry between 1997 and 2021


library(tidyverse)

ttl_2017_2021 <- "C:/Users/15712/Downloads/comtrade (22).csv"
ttl_2012_2016 <- "C:/Users/15712/Downloads/comtrade (23).csv"
ttl_2007_2011 <- "C:/Users/15712/Downloads/comtrade (24).csv"
ttl_2002_2006 <- "C:/Users/15712/Downloads/comtrade (25).csv"
ttl_1997_2001 <- "C:/Users/15712/Downloads/comtrade (26).csv"

get_ttl_goods <- function(filename){
        df = read_csv(filename) %>% 
                select(Reporter, `Reporter ISO`,
                       Partner, `Partner ISO`,
                       Year, `Trade Value (US$)`) %>%
                rename(ReporterISO = `Reporter ISO`,
                       PartnerISO = `Partner ISO`,
                       ttl_val = `Trade Value (US$)`)
}

get_ttl_goods(ttl_2017_2021) %>% 
        write.csv('data/ttlgoods_2017_21.csv')
get_ttl_goods(ttl_2012_2016) %>% 
        write.csv('data/ttlgoods_2012_16.csv')
get_ttl_goods(ttl_2007_2011) %>% 
        write.csv('data/ttlgoods_2007_11.csv')
get_ttl_goods(ttl_2002_2006) %>% 
        write.csv('data/ttlgoods_2002_06.csv')
get_ttl_goods(ttl_1997_2001) %>%
        write.csv('data/ttlgoods_1997_01.csv')
