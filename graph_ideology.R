# Leslie Huang

### Set up the workspace
rm(list=ls())
setwd("/Users/lesliehuang/network-graphing/")

set.seed(1234)

# Install some helpful libraries
libraries <- c("foreign", "utils", "dplyr", "devtools", "igraph")
lapply(libraries, require, character.only=TRUE)

mygraph <- read.csv("../network_adj_mat.csv", header = TRUE)
M <- as.matrix(mygraph[, 2:17])
g <- graph.adjacency(adjmatrix=M, mode="undirected", weighted=TRUE, diag=FALSE)

layout <- layout_with_fr(g)

#plot(g, edge.label=round(E(g)$weight, 3), layout = layout )


plot(g, layout = layout )
