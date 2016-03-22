
##Lecture 9

### Text Analysis: Topic Detection and Visualization, Part I

This week we start with frequency analysis, of specific _unigrams_ in the text data.

Files to download: [Hillary Clinton's tweets](https://www.dropbox.com/s/5eo0f3bmyxjdw5x/tweets_LP_HC.json?dl=0), [Donald Trump's tweets](https://www.dropbox.com/s/p8ih89vvseup8ym/tweets_LP_DT.json?dl=0)


Let's start with a simple word cloud
```r

library(streamR)

tweets_HC <- parseTweets("tweets_LP_HC.json")
tweets_DT <- parseTweets("tweets_LP_DT.json")

library(tm)
library(wordcloud)
library(Rstem)
library(stringr)

tweets_HC$text <- sapply(tweets_HC$text, function(row) iconv(row, "latin1", "ASCII", sub=""))
TweetCorpus <- paste(unlist(tweets_HC$text), collapse =" ") #to get all of the tweets together
%TweetCorpus <- Corpus(VectorSource(TweetCorpus))
TweetCorpus <- tm_map(TweetCorpus, PlainTextDocument)
TweetCorpus <- tm_map(TweetCorpus, removePunctuation)
TweetCorpus <- tm_map(TweetCorpus, removeWords, stopwords('english'))
%TweetCorpus <- tm_map(TweetCorpus, stemDocument) % No stemming for now!
TweetCorpus <- tm_map(TweetCorpus, content_transformer(tolower),lazy=TRUE)
TweetCorpus <- tm_map(TweetCorpus, PlainTextDocument)
wordcloud(TweetCorpus, max.words = 100, random.order = FALSE)

```

Then let's try to check the level of positivity and negativity of each candiate's tweet corpus:

[Link to Lexicon](https://www.dropbox.com/s/fjc9yd0h1jur51a/lexicon.csv?dl=0) (Courtesy of Neal Caren and Pablo Barbera)

We use the a [simple function](https://github.com/pablobarbera/social-media-workshop/blob/master/02-twitter-data-analysis.r) for finding the frequency of positive and negative words in each of the corpuses:

importing from lexicon:

```r
lexicon <- read.csv("lexicon.csv", stringsAsFactors=F)
pos.words <- lexicon$word[lexicon$polarity=="positive"]
neg.words <- lexicon$word[lexicon$polarity=="negative"]
```

Then counting the positive/negative words

```r
positive <- sum(TweetCorpus %in% pos.words)
negative <- sum(TweetCorpus %in% neg.words)
```

Now let's complicate the topic, and simplify our lexicon, starting from [this visualizaiton](http://www.nytimes.com/interactive/2016/03/11/us/elections/what-parties-debate-or-ignore.html?action=click&pgtype=Homepage&clickSource=image&module=b-lede-package-region&region=top-news&WT.nav=top-news&hp&_r=0).

#### D3

Wordclouds, frequency charts in time and topics

[Link1](http://www.nytimes.com/interactive/2012/09/04/us/politics/democratic-convention-words.html), [Link2](http://bl.ocks.org/mbostock/4063269) 

[Link3](http://hiphop.laserdeathstehr.com), [Link4](http://stanford.edu/~garylee/bibly/)
