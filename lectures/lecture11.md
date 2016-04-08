##Lecture 11

### Statistical Analysis & Visualization, Part I

Today we are going to talk about the basics of prediction based on the twitter data we have been collecting so far. Ideally the data should allow you to predict the results of a couple of upcoming primaries and test your predictions against real world results. 

In addition to the possibilities for the design, which we will discuss in detail later, there are two types of regression results visualizations I would like to mention. First using `ggplot2` to present the variations of your Dependent Variable (DV) over a given Independent Variable (IV). In addition to `ggplot2`, a very useful and ready tool to use to visualize the impact of a given multiplier in your regressioin analysis is `coefplot`. With these two basic tools, you can present a sufficient visualization to demonstrate the importance of a given IV. 


#### `ggplot2` and plotting regression results

`ggplot` is unique in its strucutre for additive _layer_ design. For adding each graphical component, you just include one more _layer_ with `+...`. Here is a simple start:

```r
library(ggplot2)

df <- data.frame(x = c(1:100))
df$y <- 2 + 3 * df$x + rnorm(100, sd = 40)
p <- ggplot(data = df, aes(x = x, y = y)) + geom_smooth(method = "lm", se=TRUE, color="black", formula = y ~ x) + geom_point()
p
```

Try adding basic features to the plot you already have

```r
p+geom_line()
p+geom_()
```

[The help file on CRAN](https://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf)

#### `Coefplot` 

```r
library(coefplot)

model1<- lm(y ~ x, data=df)
coefplot(model1)

```

[The help file on CRAN](https://cran.r-project.org/web/packages/coefplot/coefplot.pdf)
----
#### Basic Prediction Methods & Procedures 

A number of ready parameters can be used as independent variables for estimating the prospects of each candidate's campaign. A number of such parameters are:

* Volume of tweets
* Sentiement of tweets
* Retweet statistics of each candidate's corpus
* Network parameters of candidate's conversation network (based on what we discussed earlier in class)

Note that the IVs you use for each candidate are measured daily, and are correlated in time and space. Geocoded tweets are valuable, exactly because you can include some socioeconomic controls for 'states of origin'. Note that temporal correlations are often day by day, so controlling for the DV from time-1 should help. 



----


Check the following two write-ups

* [Twitter for prediction 1](http://www.g-sidorov.org/SEL.pdf)
* [Twitter for prediction 2](http://www.umiacs.umd.edu/~jimmylin/publications/Lin_Kolcz_SIGMOD2012.pdf)

----

#### Sample 3rd Assignments

[Link1](https://www.dropbox.com/s/ucgn4zolg4wwink/Assignment%203%20Writeup.docx?dl=0), [Link2](https://www.dropbox.com/s/9wkmkmfvcliak7e/Adnan%20Hajizada%20PS3.docx?dl=0), [Link3](https://www.dropbox.com/s/nr9i97avm6blor2/HW3_GeerChen.pdf?dl=0)


