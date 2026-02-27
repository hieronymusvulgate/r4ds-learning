# Why does the following give an error and how would you fix it?
# No x and y variables were given.
# ggplot does not know which variables to plot on x and y

# solve it by clearly defining x and y variables 
ggplot(
  data = penguins,
  aes(x = body_mass_g, y = flipper_length_mm)) + 
  geom_point()

#^ No aesthetic mappings for x and y are provided and these are required aesthetics for the point geom.
