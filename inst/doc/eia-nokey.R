## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE, comment = "#>", out.width = "100%",
  message = FALSE, warning = FALSE, error = FALSE, eval = FALSE
)

## ----key1, eval=FALSE----------------------------------------------------
#  library(eia)
#  # eia_set_key("yourkey")
#  # eia_get_key() # retrieve it

## ----key2, eval=FALSE----------------------------------------------------
#  key <- Sys.getenv("EIA_KEY")
#  
#  # or:
#  key <- eia_get_key()

## ----cats1---------------------------------------------------------------
#  eia_cats()

## ----cats2---------------------------------------------------------------
#  eia_cats(0)

## ----series1-------------------------------------------------------------
#  id <- "ELEC.GEN.ALL-AK-99.A"
#  (x1 <- eia_series(id, n = 5))
#  
#  x1$data[[1]]

## ----series2, eval = FALSE-----------------------------------------------
#  eia_series(id) # max results
#  eia_series(id, n = 5) # most recent five
#  eia_series(id, end = 2016, n = 5) # ending in 2016
#  eia_series(id, start = 2000, end = 2016) # specific period

## ----series3, eval = FALSE-----------------------------------------------
#  eia_series(id, n = 5, tidy = FALSE) # results of jsonlite::fromJSON
#  eia_series(id, n = 5, tidy = NA) # origina JSON as character string

## ----geoset1-------------------------------------------------------------
#  id <- c("ELEC.GEN.ALL-99.A")
#  region <- c("USA-CA", "USA-NY")
#  (x <- eia_geoset(id, region, n = 2))
#  
#  library(dplyr)
#  library(tidyr)
#  select(x, region, data) %>% unnest()

## ----geoset2-------------------------------------------------------------
#  region <- c("AK", "New England")
#  (x <- eia_geoset(id, region, n = 2))
#  
#  select(x, region, data) %>% unnest()

