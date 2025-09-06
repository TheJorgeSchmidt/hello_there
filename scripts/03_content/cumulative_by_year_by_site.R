# build a graph

# load packages
library(ggplot2)
library(EVR628tools)

# load data
data("data_heatwaves")

# build a plot
p <- ggplot(data_heatwaves,
            aes(x = year, y = mhw_int_cumulative)) +
  geom_point() +
  facet_wrap(~eu_rnpa)

p
