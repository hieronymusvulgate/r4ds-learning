ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) + # aes - aesthetics
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm") + # lm - linear model
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species" # make the legend capital
  ) +
  scale_color_colorblind() # colorblind-friendly colorway
  # aes defined in ggplot makes it global
  # geom_ functions can take it the 'mapping' variable
  # we only want color based on species but not lines to be separated
  # use shapes for colorblind people
