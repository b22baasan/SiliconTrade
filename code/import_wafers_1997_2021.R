# author: bbaasan
# Date: May 20, 2022
# version:
# Purpose: import all datasets 



library(tidyverse)
read_csv("C:/Users/15712/Downloads/comtrade (17).csv") %>% 
        select(Reporter, `Reporter ISO`, 
               Partner, `Partner ISO`, 
               Year, Qty, `Trade Value (US$)`) %>% 
        rename(ReporterISO = `Reporter ISO`,
               PartnerISO = `Partner ISO`,
               Value = `Trade Value (US$)`) %>% 
        mutate(Reporter = if_else(Reporter == 'Other Asia, nes','Taiwan', Reporter),
               Partner = if_else(Partner == 'Other Asia, nes','Taiwan', Partner),
               ReporterISO = replace_na(ReporterISO, 'TWN'),
               PartnerISO = replace_na(PartnerISO, 'TWN')) %>%
        filter(ReporterISO != 'WLD',
               PartnerISO != 'WLD') %>%
        select(ReporterISO, PartnerISO, Year, Qty, Value) %>% 
        write.csv("data/wafers_2017_2021", row.names = FALSE) 

read_csv("C:/Users/15712/Downloads/comtrade (18).csv") %>% 
        select(Reporter, `Reporter ISO`, 
               Partner, `Partner ISO`, 
               Year, Qty, `Trade Value (US$)`) %>%
        rename(ReporterISO = `Reporter ISO`,
               PartnerISO = `Partner ISO`,
               Value = `Trade Value (US$)`) %>% 
        mutate(Reporter = if_else(Reporter == 'Other Asia, nes','Taiwan', Reporter),
               Partner = if_else(Partner == 'Other Asia, nes','Taiwan', Partner),
               ReporterISO = replace_na(ReporterISO, 'TWN'),
               PartnerISO = replace_na(PartnerISO, 'TWN')) %>%
        filter(ReporterISO != 'WLD',
               PartnerISO != 'WLD') %>%
        select(ReporterISO, PartnerISO, Year, Qty, Value) %>% 
        write.csv("data/wafers_2012_2016", row.names = FALSE) 

read_csv("C:/Users/15712/Downloads/comtrade (19).csv") %>% 
        select(Reporter, `Reporter ISO`, 
               Partner, `Partner ISO`, 
               Year, Qty, `Trade Value (US$)`) %>%
        rename(ReporterISO = `Reporter ISO`,
               PartnerISO = `Partner ISO`,
               Value = `Trade Value (US$)`) %>%
        #count(Year)

        mutate(Reporter = if_else(Reporter == 'Other Asia, nes','Taiwan', Reporter),
               Partner = if_else(Partner == 'Other Asia, nes','Taiwan', Partner),
               ReporterISO = replace_na(ReporterISO, 'TWN'),
               PartnerISO = replace_na(PartnerISO, 'TWN')) %>%
        filter(ReporterISO != 'WLD',
               PartnerISO != 'WLD') %>%
        select(ReporterISO, PartnerISO, Year, Qty, Value) %>% 
        write.csv("data/wafers_2007_2011", row.names = FALSE) 

read_csv("C:/Users/15712/Downloads/comtrade (20).csv") %>% 
        select(Reporter, `Reporter ISO`, 
               Partner, `Partner ISO`, 
               Year, Qty, `Trade Value (US$)`) %>%
        rename(ReporterISO = `Reporter ISO`,
               PartnerISO = `Partner ISO`,
               Value = `Trade Value (US$)`) %>%
        #count(Year)
        
        mutate(Reporter = if_else(Reporter == 'Other Asia, nes','Taiwan', Reporter),
               Partner = if_else(Partner == 'Other Asia, nes','Taiwan', Partner),
               ReporterISO = replace_na(ReporterISO, 'TWN'),
               PartnerISO = replace_na(PartnerISO, 'TWN')) %>%
        filter(ReporterISO != 'WLD',
               PartnerISO != 'WLD') %>%
        select(ReporterISO, PartnerISO, Year, Qty, Value) %>% 
        write.csv("data/wafers_2002_2006", row.names = FALSE) 

read_csv("C:/Users/15712/Downloads/comtrade (21).csv") %>% 
        select(Reporter, `Reporter ISO`, 
               Partner, `Partner ISO`, 
               Year, Qty, `Trade Value (US$)`) %>%
        rename(ReporterISO = `Reporter ISO`,
               PartnerISO = `Partner ISO`,
               Value = `Trade Value (US$)`) %>%
        #count(Year)
        
        mutate(Reporter = if_else(Reporter == 'Other Asia, nes','Taiwan', Reporter),
               Partner = if_else(Partner == 'Other Asia, nes','Taiwan', Partner),
               ReporterISO = replace_na(ReporterISO, 'TWN'),
               PartnerISO = replace_na(PartnerISO, 'TWN')) %>%
        filter(ReporterISO != 'WLD',
               PartnerISO != 'WLD') %>%
        select(ReporterISO, PartnerISO, Year, Qty, Value) %>% 
        write.csv("data/wafers_1997_2001", row.names = FALSE) 
