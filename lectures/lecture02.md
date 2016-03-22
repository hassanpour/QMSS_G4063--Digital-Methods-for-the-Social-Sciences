What we learned in this lecture:

1. How to start processing the tweets we collected last time
2. How to implement a simple textual visualization after cleaning and stemming text
3. How to interpret and reprogram the data collection process based on the visual results
4. Also: started with the basics of webprgramming, server and user interface sides
5. How to build a starter RShiny App


### Skimming the most frequent words in the tweet dataset

Generating a word cloud and deciding on new keywords for filtering via Streaming API--parsed tweets are in tweets_BS.df:


```{r}
library(tm)
library(wordcloud)

tweets_BS.df$text <- sapply(tweets_BS.df$text, function(row) iconv(row, "latin1", "ASCII", sub=""))
TweetCorpus <- paste(unlist(tweets_BS.df$text), collapse =" ") #to get all of the tweets together
TweetCorpus <- Corpus(VectorSource(TweetCorpus))
TweetCorpus <- tm_map(TweetCorpus, PlainTextDocument)
TweetCorpus <- tm_map(TweetCorpus, removePunctuation)
TweetCorpus <- tm_map(TweetCorpus, removeWords, stopwords('english'))
TweetCorpus <- tm_map(TweetCorpus, stemDocument)
TweetCorpus <- tm_map(TweetCorpus, content_transformer(tolower),lazy=TRUE)
TweetCorpus <- tm_map(TweetCorpus, PlainTextDocument)
wordcloud(TweetCorpus, max.words = 100, random.order = FALSE)

```
