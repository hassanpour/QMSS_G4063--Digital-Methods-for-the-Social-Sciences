# Lecture 1

What we learned in this lecture:

1. How to generate a Twitter app, generate the license authorizaton 
2. How to filter the Twitter Streaming API for collecting tweets based on a certain keywords
3. How to use this simple scheme of frequency analysis for comparing the volume of conversation over a specific candidate


First generate an ''oauth'' file for communicating with your Twitter app. After generating your app at [Twitter application manager page](https://apps.twitter.com/), look for _Keys and Access Tokens_ tab, access your Consumer Key and Consumer Secret, then generate my_oauth.Rdata 

```R
library(ROAuth)
requestURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"
consumerKey <- "(your conumser key here)"
consumerSecret <- "(your consumer secret here)"
my_oauth <- OAuthFactory$new(consumerKey = consumerKey, consumerSecret = consumerSecret, requestURL = requestURL, accessURL = accessURL, authURL = authURL)
my_oauth$handshake(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))
save(my_oauth, file = "my_oauth.Rdata")
```


### Sample Code using StreamR
 
```{r}
library(streamR)
load("~/my_oauth.Rdata")
filterStream("tweets_debate.json", track = c("bernie","sanders", "hillary", "clinton", "o'malley"), timeout = 600, oauth = my_oauth)
```

Parsing our tweets:

```{r}
debate.df <- parseTweets("tweets_debate.json", simplify = TRUE)
```

A quick count

```{r}
length(grep("bernie sanders",   debate.df$text, ignore.case = TRUE))

length(grep("halliary clinton", debate.df$text, ignore.case = TRUE))
```

Who will win the Iowa Caucuses? 

