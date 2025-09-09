# build a graph

# load packages
library(ggplot2)
library(EVR628tools)

# load data
x<-data("data_heatwaves")
x

# build a plot

p <- ggplot(data_heatwaves,
            mapping = aes(x = year, y = temp_mean,
                                          group = paste(fishery, eu_rnpa))) +
  geom_col()

p

# export my plot
ggsave(plot = p,
       filename = "results/img/cumul_bar.png")

