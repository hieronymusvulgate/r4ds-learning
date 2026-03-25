# Make a bar plot of species of penguins, where you assign species to the y aesthetic. 
# How is this plot different?

ggplot(penguins, aes(y = species)) +
  geom_bar()

# It tells you count of each species
#^ This code makes the bars horizontal instead of vertical.
