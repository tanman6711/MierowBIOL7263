# Create data variable
AssignmentData<- MAH_assignment_data

# Create GG plot with assignment data
ggplot(AssignmentData,
       aes(x = Sample, y = Gene, fill = Expression)) +
geom_tile()

# Create heat map!

ggplot(AssignmentData,
       aes(x = Sample, y = Gene, fill = Expression)) +
  geom_tile(colour = "black", linewidth = 0.5) +
  scale_fill_gradient(low = "white", high = "purple") +
  theme_grey(base_size = 12) +
  ggtitle(label = "Pheromone Gene Expression") +
  theme(axis.ticks = element_blank(),
        plot.background = element_blank(),
        panel.background = element_blank(),
        panel.border = element_blank(),
        plot.title = element_text(face = "bold"),
        legend.title = element_text(face = "bold"),
        axis.title = element_text(face = "bold"))

  