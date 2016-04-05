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

#### Basic Prediction Methods & Procedures 
