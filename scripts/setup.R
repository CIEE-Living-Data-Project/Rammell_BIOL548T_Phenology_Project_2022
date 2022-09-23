-------------------------------------------------------------------------------
# BIOL 548T - Productivity and Reproducibility in Ecology and Evolution
  # Rammell_BIOL548T_Phenology_Project_2022
  # Nicola Rammell, MSc student
  # The University of British Columbia
  # 23 September 2022
-------------------------------------------------------------------------------

#### SET UP DIRECTORIES ####

# dir.create("data/")
    # dir.create("data/dryad")
    # dir.create("data/url")
    # dir.create("data/github")
# dir.create("scripts/")

#### INSTALL AND LOAD PACKAGES ####

# install.packages("groundhog")
# library(groundhog) # NOTE: I will not be using groundhog for this project as we
  # discussed it is optional, and I already have other analyses running. Instead, 
  # I will be loading packages normally.
# install.packages("usethis")
library(usethis)
# install.packages("tidyverse")
library(tidyverse)
# install.packages("here")
library(here)
# install.packages("prereg")
library(prereg)
# tinytex::install_tinytex()
# install.packages("ymlthis") # for manuscript template, includes "yaml"
library(ymlthis)
# install.packages("devtools")
library(devtools)
# install_github('viking/r-yaml')
# install.packages("rticles")
library(rticles)
# install.packages("ggplot2")
library(ggplot2)
# install.packages("readr")
library(readr)

#### DOWNLOAD AND VIEW DATA ####

## Note: for this project, I will obtain data by using a link to a .csv file on Dryad. 

# Download data to data/dryad folder
  # Data downloaded 23 September 2022
data.url <- "https://datadryad.org/stash/downloads/file_stream/72834" # provide the link
getwd()                                                               # check working directory
data.dest.file <-                                                     # specify destination for file
  "/Users/N/Documents/GitHub/BIOL548T/Rammell_BIOL548T_Phenology_Project_2022/data/dryad/phenology.csv"
download.file(url = data.url, destfile = data.dest.file)              # download the file
View(phenology.csv)                                                   # View the file

# Note: You can also view data directly using the following code
  # phenology <- readr::read_csv("https://datadryad.org/stash/downloads/file_stream/72834")
  # View(phenology)


