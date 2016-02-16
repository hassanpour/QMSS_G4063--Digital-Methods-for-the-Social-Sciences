
##Lecture 5

### Interactive social network analysis & visualization with D3 and RShiny - Part I

We are going to continue from where we left off last week. If you remember, we set up a D3 app, fired up a local server, and accessed the output on your computers. Some of you had their barcharts transitioning between the two vectors we had in the Java Script code. 

In this lecture we are going to move from simple descriptive charts to relational plots, network diagrams to be exact.

#### Defintions 

A good way of processing and visualization of relational data is to store and depict it using a graph structure. A graph, G, is defined by a set of nodes (let's say V), a set of edges (E), each edge defined as an ordered pair (if the graph is _directed_), or an unordered pair (if the graph is _undirected_) of the node set (V). If the edges are weighted, then there is a set the size of E, which includes the weights. So a graph is defined with 1) set of nodes 2) set of pairs of these nodes & sometimes 3) a vector of weights assigned to each edge 


#### Code, Our First Example

We are going to use D3 and Shiny examples, go to [this folder](https://github.com/hassanpour/QMSS_G4063/tree/master/project_folder_SNA) on course's GitHub, and download it on your computer. 
