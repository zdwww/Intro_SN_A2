library(networkdata)
library(sna)
library(igraph)
library(ggraph)

rm(list = ls())
getwd()

# data(package = "networkdata")
covert_28 # London Gang N54E315
vertex_attr(covert_28)
table(E(covert_28)$weight)

covert_24 # Italian Gang N67E114
vertex_attr(covert_24)



#### Task 1.(a) Describe and visualize the dataset
vertex_attr(covert_24, "country") <- as.character(vertex_attr(covert_24, "country"))
set.seed(10)
layout.graph <- create_layout(covert_24, 
                              layout = 'fr')
ggraph(layout.graph) + 
  geom_edge_link() + 
  geom_node_point(aes(colour = country), size=3) + 
  theme_graph() 

#### Task 2.(a) Community detection


#### Task 2.(b) Describe and visualize the dataset