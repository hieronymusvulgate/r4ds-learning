# Recreate the following visualization. What aesthetic should bill_depth_mm be mapped to? 
# And should it be mapped at the global level or at the geom level?
ggplot(
  data = penguins,
  aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = bill_depth_mm)) +
  geom_smooth()

# If i want different colors for different species I use "species" (quotes)
# If i want changing colors based on ever changing variable values use bill_depth_mm (no quotes)
