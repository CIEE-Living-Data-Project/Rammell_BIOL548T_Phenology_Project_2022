------------------------------------------------------------------------------
# BIOL 548T - Productivity and Reproducibility in Ecology and Evolution
  # Rammell_BIOL548T_Phenology_Project_2022
  # Nicola Rammell, MSc student
  # The University of British Columbia
  # 23 September 2022
------------------------------------------------------------------------------

# SUBSET THE DATA TO USE ONLY FLOWERING PHENOLOGY
  # Make a subset of the data where phen = 3
  # 'phen' = phenological stage (2=first leaf, 3=first flower)
View(phenology)
flowers <- subset(phenology, phen=='3')

# CREATE PLOT
library(ggplot2)
names(flowers)

ggplot(flowers, aes(day_difference, doy, colour = factor(species))) +
  geom_point() + theme_classic() +
  theme(text = element_text(size = 10)) +
  theme(axis.text.x = element_text(size = 10, hjust = 0.5, vjust = 0.5)) +
  theme(axis.title.x = element_text(margin = margin(t = 10, r = 0, b = 0, l = 0))) +
  theme(axis.text.y = element_text(size = 10, hjust = 0.5, vjust = 0.5)) +
  theme(axis.title.y = element_text(margin = margin(t = 0, r = 10, b = 0, l = 0))) +
  coord_cartesian(ylim = c(140, 190)) +
  theme(legend.position="top") + 
  theme(legend.title = element_text(size = 10, color = "black", face = "bold")) +
  theme(legend.text = element_text(size = 10, face = "italic")) +
  labs(x="Relative timing of snowmelt (day difference)", 
       y = "Flowering phenology (DOY)")

# VIEW PLOT OBJECT
plot



