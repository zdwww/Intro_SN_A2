library(networkdata)
library(sna)
library(igraph)
library(ggraph)

rm(list = ls())
getwd()

# data(package = "networkdata")
covert_28 # London Gang N54E315
vertex_attr(covert_28)

covert_24 # Italian Gang N67E114
vertex_attr(covert_24)



#### Task 1.(a) Describe and visualize the dataset

ggraph(covert_24, layout = 'fr') + 
  geom_node_point() + 
  geom_edge_link() + 
  theme_graph() 

#### Task 2.(a) Community detection

#### Task 2.(b) Describe and visualize the dataset