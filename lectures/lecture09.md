
##Lecture 9

### Text Analysis: Topic Detection and Visualization, Part I

This week we start with frequency analysis, of specific _unigrams_ in the text data.

Files to download: [Hillary Clinton's tweets](https://www.dropbox.com/s/5eo0f3bmyxjdw5x/tweets_LP_HC.json?dl=0), [Donald Trump's tweets](https://www.dropbox.com/s/p8ih89vvseup8ym/tweets_LP_DT.json?dl=0)


Let's start with a simple word cloud
```r

library(streamR)

tweets_HC <- parseTweets(tweets_LP_HC.json)
tweets_DT <- parseTweets(tweets_LP_DT.json)

library(tm)
library(wordcloud)

tweets_BS.df$text <- sapply(tweets_HC.df$text, function(row) iconv(row, "latin1", "ASCII", sub=""))
TweetCorpus <- paste(unlist(tweets_HC.df$text), collapse =" ") #to get all of the tweets together
TweetCorpus <- Corpus(VectorSource(TweetCorpus))
TweetCorpus <- tm_map(TweetCorpus, PlainTextDocument)
TweetCorpus <- tm_map(TweetCorpus, removePunctuation)
TweetCorpus <- tm_map(TweetCorpus, removeWords, stopwords('english'))
TweetCorpus <- tm_map(TweetCorpus, stemDocument)
TweetCorpus <- tm_map(TweetCorpus, content_transformer(tolower),lazy=TRUE)
TweetCorpus <- tm_map(TweetCorpus, PlainTextDocument)
wordcloud(TweetCorpus, max.words = 100, random.order = FALSE)

```
