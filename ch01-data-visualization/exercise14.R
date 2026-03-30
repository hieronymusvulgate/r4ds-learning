# Make a histogram of the carat variable in the diamonds dataset that is available when you load the tidyverse package. 
# Experiment with different binwidths. 
# What binwidth reveals the most interesting patterns?

# ggplot(diamonds, aes(x = carat)) +
#  geom_density()

# geom_density() shows that most of the data occur between 0 and 5 carats
# hence, binwith must be between 0 and 5
# geom_density() shows 5 distinct peaks
# experimenting with different binwidth

ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.1)

# binwidth = 5 shows 2 bars
# binwidth = 1 shows 4 bars which doesn't reflect what we saw in geom_density()
# binwidth = 0.1 shows the 5 distinct peaks which reveals the most interesting patterns

