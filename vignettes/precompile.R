# Precompiled vignettes that depend on API key
# Must manually move image files from eia/ to eia/vignettes/ after knit

library(knitr)
knit("vignettes/api.Rmd.orig", "vignettes/api.Rmd")
knit("vignettes/categories.Rmd.orig", "vignettes/categories.Rmd")
knit("vignettes/eia.Rmd.orig", "vignettes/eia.Rmd")
knit("vignettes/geoset.Rmd.orig", "vignettes/geoset.Rmd")
knit("vignettes/series.Rmd.orig", "vignettes/series.Rmd")
