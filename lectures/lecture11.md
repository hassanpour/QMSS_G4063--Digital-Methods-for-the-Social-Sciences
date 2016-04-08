##Lecture 11

### Statistical Analysis & Visualization, Part I

Today we are going to talk about the basics of prediction based on the twitter data we have been collecting so far. Ideally the data should allow you to predict the results of a couple of upcoming primaries and test your predictions against real world results.  

#### `ggplot2` and plotting regression results

```r
library(ggplot2)

df <- data.frame(x = c(1:100))
df$y <- 2 + 3 * df$x + rnorm(100, sd = 40)
p <- ggplot(data = df, aes(x = x, y = y)) + geom_smooth(method = "lm", se=TRUE, color="black", formula = y ~ x) + geom_point()
p
```

[The help file on CRAN](https://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf)

#### `Coefplot` 

```r
library(coefplot)

model1<- lm(y ~ x, data=df)
coefplot(model1)

```

[The help file on CRAN](https://cran.r-project.org/web/packages/coefplot/coefplot.pdf)

#### Basic Prediction Methods & Procedures 

A number of ready parameters can be used as independent variables for estimating the prospects of each candidate's campaign. A number of such parameters are:

* Volume of tweets
* Sentiement of tweets
* Retweet statistics of each candidate's corpus
* Network parameters of candidate's conversation network

#### Sample 3rd Assignments

[Link1](https://www.dropbox.com/s/ucgn4zolg4wwink/Assignment%203%20Writeup.docx?dl=0), [Link2](https://www.dropbox.com/s/9wkmkmfvcliak7e/Adnan%20Hajizada%20PS3.docx?dl=0), [Link3](https://www.dropbox.com/s/nr9i97avm6blor2/HW3_GeerChen.pdf?dl=0)


