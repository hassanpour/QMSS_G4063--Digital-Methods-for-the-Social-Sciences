##Lecture 8

### Interactive GIS with D3 and RShiny - Part II

Continuing with GIS in R, and Primaries Twitter data

Last time we learned how to geolocate tweets on the U.S. map. This week I go through basic concepts of geoprocessing in "R" specifically, and at the end we conduct an exercise, counting the number of tweets (from each candidate) produced in each state. We will talk about the political import of such geo-frequencies.

Before we start working with the Twitter data we have, first some basic definitions. Go to [the following link](https://cran.r-project.org/doc/contrib/intro-spatial-rl.pdf). 

Install ```"ggmap", "rgdal", "rgeos", "maptools", "dplyr", "tidyr", "tmap", "maps"```.

Topics of interest: 

* The structure of spatial data in R
* Plotting some basic maps
* Attribute joins
* Spatial joins (many to one, one to many, one to one)


### Spatial joins with Geolocated Tweets and Counts per State

```r
library(sp)
library(maps)
library(rgdal)
library(rgeos)
library(GISTools)
library(maptools)

geo_tweets = parseTweets("tweets_geo_all.json")

tw_coordinates_B<- cbind(geo_tweets$lon,geo_tweets$lat)
tw_coordinates_B2 <- na.omit(tw_coordinates_B)
tw_points_B <- SpatialPoints(tw_coordinates_B2)
plot(tw_points_B)

#proj4string(tw_points_B) <- crs.geo
#crs.geo <- CRS("+init=EPSG:32633")

plot(tw_points_B)
class(tw_points_B)

all_states <- map_data("state")
plot(all_states)

library(rgeos)

library(GISTools)

require(maps)
usa <- map("state")

require(sp)
require(maptools)
IDs <- sapply(strsplit(usa$names, ":"), function(x) x[1])
usa <- map2SpatialPolygons(usa, IDs=IDs, proj4string=CRS("+proj=longlat +datum=WGS84"))

poly.counts(tw_points_B, usa)
```



---
##### Assignment 3 and Final Project
