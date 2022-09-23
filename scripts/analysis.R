# BIOL 548T - Productivity and Reproducibility in Ecology and Evolution
  # Rammell_BIOL548T_Phenology_Project_2022
  # Nicola Rammell, MSc student
  # The University of British Columbia
  # 23 September 2022

# Make a subset of the data where phen = 3
View(phenology.csv)
phenology <- phenology.csv
View(phenology)

flower <- phenology[which(phenology$phen=='3')]
  
  