
##Lecture 5

### Interactive social network analysis & visualization with D3 and RShiny - Part I

We are going to continue from where we left off last week. If you remember, we set up a D3 app, fired up a local server, and accessed the output on your computers. Some of you had their barcharts transitioning between the two vectors we had in the Java Script code. 

In this lecture we are going to move from simple descriptive charts to relational plots, network diagrams to be exact.


To be discussed:

1. Network Elements in Social Media Data
2. Useful Network Parameters
3. D3 Examples for Network Visualization


#### Defintions 

A good way of processing and visualization of relational data is to store and depict it using a graph structure. A graph, G, is defined by a set of nodes (let's say V), a set of edges (E), each edge defined as an ordered pair (if the graph is _directed_), or an unordered pair (if the graph is _undirected_) of the node set (V). If the edges are weighted, then there is a set the size of E, which includes the weights. So a graph is defined with 1) set of nodes 2) set of pairs of these nodes & sometimes 3) a vector of weights assigned to each edge 


#### Code, Our First Example

We are going to use D3 and Shiny examples, go to [_project folder_](https://github.com/hassanpour/QMSS_G4063/tree/master/project_folder) on your local computer, you might rememer we used the same folder for the running some D3 codes last time. After backing up your _index.html_ file, replace the content of .html with [this file's content](https://github.com/hassanpour/QMSS_G4063/blob/master/project_folder_SNA/index.html), also make a .json file in your project_folder. Use the [content of this file](https://github.com/hassanpour/QMSS_G4063/blob/master/project_folder_SNA/miserables.json). Now cd to your project_folder, run your local server, and go to your local server's address to see the results (if you do not rememebr how to do all of this, go back to instructions in Lecture 4). 

#### Tweet Networks

[tweets.json](https://raw.githubusercontent.com/hassanpour/QMSS_G4063/master/lectures/project-folder/tweets.json) includes a few tweets. Let's extract the _mention network_ and _retweet network_ associated with these tweets.

Go to [this link](https://github.com/pablobarbera/pytwools/blob/master/export-network-data.py) to access a piece of ready Python code for parsing your tweets.json, and mining the mention relations between users. After running the relevant code, 


you will have the CSV file needed for feeding to [a D3 sample code here](http://bl.ocks.org/mbostock/2949937) for generating a [force-directed graph](http://bl.ocks.org/mbostock/4062045). 

Let's see what we have.


#### Trying Some Examples


-----
Links
-----
* [An R library for using force-directed graphs from D3](http://christophergandrud.github.io/networkD3/)
* [Samples of interactive visualizations with RShiny](http://www.ahschulz.de/2012/11/20/interactive-visualizations-with-shiny/)
