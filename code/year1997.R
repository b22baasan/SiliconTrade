# author: bbaasan
# Date:May 21, 2022
# version:
# Purpose: calculate year 1997 revealed comparitive advantage for USA

library(tidyverse)

list.files('data')
# get a country total goods in export 1997
ttl_goods97 <- read_csv('data/ttlgoods_1997_01.csv') %>% 
        select(ReporterISO, PartnerISO, Year, ttl_val) %>% 
        mutate(ReporterISO = if_else(is.na(ReporterISO),'TWN', ReporterISO)) %>%
        filter(Year == 1997) %>% 
        group_by(ReporterISO) %>% summarise(ttl = sum(ttl_val)) 

wafers_97 <- read_csv('data/wafers_1997_2001') %>%
        filter(Year == 1997) %>% 
        select(ReporterISO, PartnerISO, Year, Qty, Value) %>% 
        group_by(ReporterISO) %>% summarise(ttl_qty = sum(Qty),
                                            ttl_val = sum(Value)) 

final.97 <- ttl_goods97 %>% 
        full_join(wafers_97, by = 'ReporterISO') %>% 
        select(ReporterISO, ttl_qty, ttl_val, ttl) %>% 
        rename(CountryCode = ReporterISO,
               wafer_qty = ttl_qty, 
               wafer_val = ttl_val,
               ttl_goods97_value = ttl) %>% 
        mutate(wafer_qty = if_else(is.na(wafer_qty), 0, wafer_qty),
               wafer_val = if_else(is.na(wafer_val), 0, wafer_val))

library(wbstats)
world <- wb_countries()

income_lvls <- world %>% 
        select(iso3c, country, longitude, latitude, region, income_level) %>% 
        filter(income_level != 'Aggregates') %>% 
        rename('CountryCode' = iso3c)

final.97 %>% 
        left_join(income_lvls, by = 'CountryCode') %>% 
        mutate(wafer_share = wafer_val / ttl_goods97_value) %>% 
        #summary()
        top_n(wafer_qty)
 
