##Lecture 7

### Interactive GIS with D3 and RShiny - Part I

----
#### Main Concepts

1. GIS Data Types (hint: remember the network data analogy--edges and nodes) 

  1. Vector: GIS data based on points, lines and polygons, used primarily for delineating map boundaries
  2. Raster: GIS data based on pixels (or cells), raster data constitues the attributes of each pertinent cell 

2. Shape Files: vector files for storing location and shape of a geographic feature 

Go to this [link](http://www1.gsi.go.jp/geowww/globalmap-gsi/download/data/gm-japan/gm-jpn-all_u_2_1.zip), download, unzip to your working directory, look for ``polbnda_jpn.shp``. Install and load ``maptools`` in RStudio. 

```r
cities.japan <- readShapeSpatial('polbnda_jpn.shp')
plot(cities.japan)
```

Note: See [the blogpost](http://www.r-bloggers.com/first-step-on-gis-with-r/) on R-bloggers, and [the Github page] (https://github.com/osubera/pm25-ibaraki)


The concept of ``joining`` spatial data: [tutorial](https://dl.dropboxusercontent.com/u/9577903/broomspatial.pdf)


#### GIS with RShiny, Intro

1. GIS data format
2. Importing maps
3. Geolocated social data

#### A GIS Visualization Exercise with R
Maps and data points

#### Another GIS Visualization Exercise with D3
Mapping U.S. states

Check out [this tutorial by Mike Bostocks](https://bost.ocks.org/mike/map/)

----
#### GIS Parameters

GIS metrics for analysis

----

#### Maps in Shiny and D3

1. GIS data format
2. Importing maps
3. Geolocated social data

----
Also see:

1. Bivand, R. S., Pebesma, E. J., and Gómez-Rubio, V. (2013). _Applied spatial data analysis with R_, Springer
2. [Creating maps in R](https://github.com/Robinlovelace/Creating-maps-in-R)


