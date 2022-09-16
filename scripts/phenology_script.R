# BIOL 548T - Productivity and Reproducibility in Ecology and Evolution

#### DOWNLOAD DATA ####

## create directories
dir.create("data/")
dir.create("scripts/")

dir.create("data/url")
dir.create("data/dryad")
dir.create("data/github")

## download data from a url
# downloaded on 2022-09-15
data.url <- "https://ftp.maps.canada.ca/pub//nrcan_rncan/Forests_Foret/TLW/TLW_invertebrateDensity.csv"
metadata.url <- "https://ftp.maps.canada.ca/pub//nrcan_rncan/Forests_Foret/TLW/TLW_invertebrate_metaEN.csv"

getwd()
data.dest.file <- "/Users/N/Documents/GitHub/BIOL548T/Rammell_BIOL548T_Phenology_Project_2022/data/url/NRCAN_1995_2009_TLW_invert_density.csv"
metadata.dest.file <- "/Users/N/Documents/GitHub/BIOL548T/Rammell_BIOL548T_Phenology_Project_2022/data/url/NRCAN_1995_2009_TLW_invert_metadata.csv"

download.file(url = data.url, destfile = data.dest.file)
download.file(url = metadata.url, destfile = metadata.dest.file)

invert.density <- read.csv("data/url/NRCAN_1995_2009_TLW_invert_density.csv")
View(invert.density)

## download data from github

dir.create("/Users/sam/LDP/PROD_REPRO/Beta_div/")
usethis::create_from_github(repo_spec = "https://github.com/kguidonimartins/betadiv-enp.git",
                            destdir="/Users/sam/LDP/PROD_REPRO/Beta_div/")
system("cp -r /Users/sam/LDP/PROD_REPRO/Beta_div/betadiv-enp/data/* data/github/.")


#### MANUSCRIPT ####

## Install and load packages required
# install.packages("prereg")
library(prereg)
# tinytex::install_tinytex()


