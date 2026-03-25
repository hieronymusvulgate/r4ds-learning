# What does the bins argument in geom_histogram() do?

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(bins = 20)
# Determines how many bars in the histogram
