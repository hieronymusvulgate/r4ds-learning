# bill_depth_mm is a number denoting bill depth (millimeters)
# Make a scatterplot of bill_depth_mm vs. bill_length_mm. 
# That is, make a scatterplot with bill_depth_mm on the y-axis and bill_length_mm on the x-axis. 
# Describe the relationship between these two variables.
ggplot (
  data = penguins,
  aes(x = bill_depth_mm, y = bill_length_mm)
) +
  geom_point()

# Positive strong linear relationship

## ^And somewhat strong association between bill depth and bill length of penguins

