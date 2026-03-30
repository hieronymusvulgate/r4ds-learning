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

# ggplot2 calls
# ggplot(data =, mapping =) - two important variables
# can be ommited ggplot(penguins, aes()) - to save time
# piping(learn in the future): 
# penguins |> 
  # ggplot(aes(x = flipper_length_mm, y = body_mass_g)) + 
  # geom_point()

# visualizing distributions
# categorical variable: A variable is categorical if it can only take one of a small set of values.
# can use bar chart, representing how many observations per single variable
ggplot(penguins, aes(x = species)) + # non-ordered, categorical since only using x
  geom_bar()

# transform the variable into a factor, then arrange them based on frequency, then plot

ggplot(penguins, aes(x = fct_infreq(species))) +
  geom_bar()

# numerical variable: A variable that can take a wide range of values
# can add, subtract, take average of these values
# can be continuous (e.g. curve)  or discrete

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 200) # binwidth is the width of the intervals

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 20) # too many useless intervals

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 2000) # too little to visualize

# geom_density
ggplot(penguins, aes(x = body_mass_g)) +
  geom_density() # smooth out histogram, more practical
# glean at the shape of the histogram
# find mode and skewness more easily


# Visualising relationships
# Need to have at least 2 variables mapped to the aesthetics of the plot

# Numerical and Categorical: Box plot
# The box is 25th to 75th percentile (Interquartile range)
# The line is the median (50th percentile)
# Can find out whether the plot is symmetric about the median or skewed to one side
# Outliers are plotted as dots: Anything 1.5 times from either side of the IQR
# Distribution of species by body mass
ggplot(penguins, aes(x = species, y = body_mass_g)) +
  geom_boxplot()
# Density plot
ggplot(penguins, aes(x = body_mass_g, color = species)) +
  geom_density(linewidth = 0.75) # Using linewidth to adjust the width of lines to make it stand out more

# Fill the density curve
ggplot(penguins, aes(x = body_mass_g, color = species, fill = species)) +
  geom_density(alpha = 0.5) # Alpha 0-1 0 being totally transparent and 1 being totally opaque
# when you map attributes inside aes, it varies with data
# when attributes are set outside of aes, they are fixed

# 2 Categorical values: Stacked Bar plot

ggplot(penguins, aes(x = island, fill = species)) + # visualising the distribution to species in each island
  geom_bar()
# Shows that there are roughly the same number of Adelies on each island
# Doesn't show the percentage balance between each island
