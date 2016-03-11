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

First, apply the [following code](https://github.com/hassanpour/QMSS_G4063/blob/master/project_folder_SNA/index_all.html) (in your index.html) to `edges_all.csv`

What are your impressions about these networks? How are they different? Do you see any meaningful differences between network parameters, such as the size of _main component_, or the level of connectivity, and the highest degree nodes in the net?

##### Adding Labels

See the `index.html` file [at the following link](https://github.com/hassanpour/QMSS_G4063/blob/master/project_folder_SNA/index_w_labels.html). I have made this file by 

1. Collecting the tweet.JSON file from StreamingAPI 
2. Parsing the JSON file using a Python parser to produce `edges.csv` and `nodes.csv`
3. `Vlookup` in Excel to replace user id s with "labels (twitter handles)"
4. Finally, feeding the `force_trump.csv` to the D3 code for generating a net visualization with curvy edged 


Note the following piece of code in `index.html`

```html
// add the text
node.append("text")
    .attr("x", 12)
    .attr("dy", ".35em")
    .text(function(d) { return d.name; });
```

See how D3s JS *appends* components to *node*. Compare the function `tick()` in the curvy net visualization to the original function in `index.htm` (also included in the file linked above).  



----

[This link](http://christophergandrud.github.io/networkD3/) points to a laundry list of available network visualizations in D3, and is an interface between R and D3 you can use, but note the special format of network data JSONs and CSVs in D3, it is not directly compatible with the simple (node, link) structure I discussed in the last lecture. 

-----


#### A short and quick intro to Gephi: calcualing network parameters, visualization:

In the second section of class, we go through some network parameter calculations in Gephi. These variables are going to be useful in your assessment of candidates' conversation networks. In particular, we are interested in understanding the implications of 

1. Small network _diameters_ vis a vis large _diameters_
2. The size of _clustering coefficients_ and interactivity of a network
3. Average degree and path length and connectivity of the pertient network

You will use the same concepts in writing up your second assignment. 


-----

#### Assignment 2: 

* Network data visualization with Rshiny and D3

-----

##### Useful Links

* Running an app on [Rshiny.io](https://www.shinyapps.io/), quick setup for uploading your next RShiny app
* [Adding features to D3 force layout, a good list](http://www.coppelia.io/2014/07/an-a-to-z-of-extra-features-for-the-d3-force-layout/)

-----

A sample mention network with D3: 
![alt text](https://github.com/hassanpour/QMSS_G4063/blob/master/images/net1_Page_2.png "Mention networks")

