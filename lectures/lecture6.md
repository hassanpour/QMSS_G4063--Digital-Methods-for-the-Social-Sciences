##Lecture 6


### Interactive social network analysis & visualization with D3 and RShiny - Part II

#### Intro

1. Sample Visualizations from the first assignment, 
2. Summary of the last session
2. Review of network parameters
 * Diameter of a given graph (G)
 * Average degree
 * Averagre clustering coefficient
 * # of connected components
 * Average path length 


#### D3 Network Visualziations, cont.

D3 has a _force directed_ layout for organizing network visualization which we experimented with in the last session. Download the contents of [this folder](https://www.dropbox.com/sh/r9tdjbzfegfmzh3/AABQbUJvVpNokwRim-Mnk5Fba?dl=0). We will do some experimentations with these networks in .CSV files. What are your impressions about these networks? How are they different? Do you see any meaningful differences between network parameters, such as the size of _main component_, or the level of connectivity, and the highest degree nodes in the net?

[This link](http://christophergandrud.github.io/networkD3/) points to a laundry list of available network visualizations in D3, and is an interface between R and D3 you can use, but note the special format of network data JSONs and CSVs in D3, it is not directly compatible with the simple (node, link) structure I discussed in the last lecture. 


#### Calcualing Net Parameters, and Visualization with Gephi

1. Gephi introduction 
2. Net parameter calculations


##### Note: RShiny on the web

* Running an app on [Rshiny.io](https://www.shinyapps.io/), quick setup 

---

#### Assignment 2: 

* Network data visualization with Rshiny and D3




----
#### Uploading your apps

* RShiny apps [here at this link](http://www.shinyapps.io/)
* D3 apps [here at this link](http://code.runnable.com/new) or [at this link](https://vida.io/home/documents/new)
