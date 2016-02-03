# server.R

library(streamR)

library(tm)
library(wordcloud)

load("my_oauth.Rdata")

shinyServer(function(input, output) {

  
  tweets_shiny.df <- parseTweets("tweets_BS.json", simplify = TRUE)
  
  tweets_shiny.df$text <- sapply(tweets_shiny.df$text, function(row) iconv(row, "latin1", "ASCII", sub=""))
  TweetCorpus <- paste(unlist(tweets_shiny.df$text), collapse =" ") 
  TweetCorpus <- Corpus(VectorSource(TweetCorpus))
  TweetCorpus <- tm_map(TweetCorpus, PlainTextDocument)
  TweetCorpus <- tm_map(TweetCorpus, removePunctuation)
  TweetCorpus <- tm_map(TweetCorpus, removeWords, stopwords('english'))
  TweetCorpus <- tm_map(TweetCorpus, stemDocument)
  TweetCorpus <- tm_map(TweetCorpus, content_transformer(tolower),lazy=TRUE)
  TweetCorpus <- tm_map(TweetCorpus, PlainTextDocument)

 
  times <- as.POSIXct(tweets_BS.df$created_at, format="%a %b %d %H:%M:%S %z %Y")
  
  output$freq_plot<- renderPlot({
    hist(times, breaks="mins")
  })
  
  output$wordcloudT <- renderPlot({
    wordcloud(TweetCorpus, max.words = 100, random.order = FALSE,scale=c(8,1),colors=brewer.pal(8, "Dark2"))
    })
  
  output$info_click <- renderText({
    paste0("x=", input$plot_click$x, "\ny=", input$plot_click$y)
  })

  
}
)
