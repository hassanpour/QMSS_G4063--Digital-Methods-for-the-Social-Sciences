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

D3 has a _force directed_ layout for organizing network visualization which we experimented with in the last session. Download the contents of [this folder](https://www.dropbox.com/sh/r9tdjbzfegfmzh3/AABQbUJvVpNokwRim-Mnk5Fba?dl=0). 

We will do some experimentations with these networks in .CSV files. 

First, apply the [following code](https://github.com/hassanpour/QMSS_G4063/blob/master/project_folder_SNA/index_all.html)(in your index.html) to `edges_all.csv`

What are your impressions about these networks? How are they different? Do you see any meaningful differences between network parameters, such as the size of _main component_, or the level of connectivity, and the highest degree nodes in the net?

##### Adding Labels

See the `index.html` file [at the following link](https://github.com/hassanpour/QMSS_G4063/blob/master/project_folder_SNA/index_w_labels.html). I have made this file by 

1. Collecting the tweet.JSON file from StreamingAPI 
2. Parsing the JSON file using a Python parser to produce `edges.csv` and `nodes.csv`
3. `Vlookup` in Excel to replace user id s with "labels (twitter handles)"
4. Finally, feeding the `force_trump.csv` to the D3 code for generating a net visualization with curvy edged 


Note the following piece of code in `index.html`

```html
node.append("text")
    .attr("x", 12)
    .attr("dy", ".35em")
    .text(function(d) { return d.name; });
```

[This link](http://christophergandrud.github.io/networkD3/) points to a laundry list of available network visualizations in D3, and is an interface between R and D3 you can use, but note the special format of network data JSONs and CSVs in D3, it is not directly compatible with the simple (node, link) structure I discussed in the last lecture. 


#### Calcualing Net Parameters, and Visualization with Gephi

1. Gephi introduction 
2. Net parameter calculations


##### Useful Links

* Running an app on [Rshiny.io](https://www.shinyapps.io/), quick setup for uploading your next RShiny app
* [Adding features to D3 force layout, a good list](http://www.coppelia.io/2014/07/an-a-to-z-of-extra-features-for-the-d3-force-layout/)

---

#### Assignment 2: 

* Network data visualization with Rshiny and D3



