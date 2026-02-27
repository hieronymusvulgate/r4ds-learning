# What does the na.rm argument do in geom_point()? 
# What is the default value of the argument? 
# Create a scatterplot where you successfully use this argument set to TRUE.

ggplot(
  data = penguins,
  aes(x = body_mass_g, y = flipper_length_mm)
) +
  geom_point(na.rm = TRUE)
# No difference in the plots, except the warning message of removing missing values 
# or values outside the scale range is gone.

#^ Setting the na.rm argument to TRUE removes the missing values without a warning. 
#^ The value for this argument is FALSE by default.
