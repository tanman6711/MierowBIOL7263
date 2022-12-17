heatmap(pheromone_data1, 
        Colv = NA, 
        Rowv = NA, 
        margins = c(7, 5), 
        cexcol = 1,
        col = terrain.colors(10),
        main = "Pheromone Gene Expression", 
        xlab = "Groups", 
        ylab = "Genes")

pheromone_data2 <- read.csv("pheromone_data2.csv")

ggplot(pheromone_data2,
       aes(x = Sample, y = Gene, fill = Expression)) +
geom_tile()

ggplot(pheromone_data2,
       aes(x = Sample, y = Gene, fill = Expression)) +
  geom_tile(colour = "black", linewidth = 0.5) +
  scale_fill_gradient(low = "white", high = "purple") +
  theme_grey(base_size = 12) +
  theme(axis.ticks = element_blank(),
        plot.background = element_blank(),
        panel.background = element_blank(),
        panel.border = element_blank())

ggplot(pheromone_data2,
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

  