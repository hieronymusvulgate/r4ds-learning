# How are the following two plots different? 
# Which aesthetic, color or fill, is more useful for changing the color of bars?
ggplot(penguins, aes(x = species)) +
  geom_bar(color = "red")
# The outline of the bar graph is red

ggplot(penguins, aes(x = species)) +
  geom_bar(fill = "red")
# The whole bar becomes red
# fill = "red" is more useful
