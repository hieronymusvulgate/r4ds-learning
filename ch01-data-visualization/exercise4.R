# What happens if you make a scatterplot of species vs. bill_depth_mm? 
# There will only be three values of species
# ^Species is a categorical variable and a scatterplot of a categorical variable is not that useful as it’s difficult to use it to describe the distribution of bill depth across species.
# What might be a better choice of geom?
# Box plot allows us to compare bill depth accross all species
# Having median, spread and outliers(dots outside of the lines) to question consistency
# Mean of Chinstrap is greater than Adelie but the max of adelie is greater than that of Chinstrap
ggplot(
  data = penguins,
  aes(x = species, y = bill_depth_mm)
) +
  geom_boxplot()

# geom_bar: You give it x and it will count the frequency of y
# geom_col: You give it x and y, it will draw y whatever height you give
# geom_histogram(): same as bar but it is for continuous data
# geom_bar → "how many penguins are exactly Adelie, Chinstrap, Gentoo?" (fixed categories)
# geom_histogram → "how many penguins are 180-190cm tall, 190-200cm tall?" (number ranges)
