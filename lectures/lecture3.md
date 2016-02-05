What we learn in this lecture:

1. How to run our first more involved RShiny App
2. How to pull ready widgets online for effective interfacing
3. How to start working with interactive plots that respond to _hovering_, _clicks_ and _drag&drop_ on the user side


### Intro

Make sure you familiarize yourself with R Shiny, a platform for writing web applications for R. We will use Shiny and D3 for visualizing the tweets we are collecting. The goal is to analyze and visualize real time data. There is a good tutorial for starting out [here at this link](http://shiny.rstudio.com/tutorial/).

Here is what you have to do: make a folder named "Shiny_Primaries" your working directory, and creates two R files named "ui.R" and "server.R" inside _Shiny_Primaries_. After you are done writing up your user interface (ui.R) and your server code (server.R), you can run your app by simply typing 

```{r} 
runApp("Shiny_Primaries")
```

Note that the user interface is basically an .html file with widgets you can readily find online and embed in your code interface. The server side is where the magic happens: in our case, based on the parameters from the user interface, we will pull tweets from streaming API, parse them, and visualize them based on the user's input on interacive widgets. 

Let's see how it works:


### Writing an R Shiny app for your managing and visualizing your twitter data

First, the user interface side. Note that there are two or three main elements "title", "sidebar panel", and "main panel". We will put the input widget in the sidebar panel, the main output panel will inlude the output plot.

```{r} 
library(shiny)
# ui.R

shinyUI(fluidPage(
  titlePanel("Tweets per Candidate"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Choose a specific candidate, visualize the volume of tweets"),
      
      selectInput("var", 
        label = "Choose a variable to display",
        choices = c("Hillary Clinton", "Bernie Sanders",
          "Ted Cruz", "Marco Rubio","Donald Trump"),
        selected = "Hillary Clinton"),
      
      sliderInput("range", 
        label = "Range of time",
        min = 0, max = 200, value = c(0, 200))
    ),
    
    mainPanel(
      textOutput("text1")
    )
  )
))

```

You can use any of the ready to use widgets [here at this link](http://shiny.rstudio.com/gallery/widget-gallery.html). There are plenty of platforms and schemes you can use. On the server side, we are going to try a number of things, frequncy plots by time, as well as wordclouds. 

Later we will build an app that gets two input parameters: input$var and input$range and uses them to collect tweets in the server side of the code in real time--but for now let's use the existing tweets we have. They are already uploaded here on GitHub "tweets_BS" in JSON and R dataframe formats. 

On the server side, we embed the wordcloud code, as well as a simple frequency plot in time based on a per minute basis. 

Word cloud first:
```{r}
tweets_shiny.df$text <- sapply(tweets_shiny.df$text, function(row) iconv(row, "latin1", "ASCII", sub=""))
  TweetCorpus <- paste(unlist(tweets_shiny.df$text), collapse =" ") 
  TweetCorpus <- Corpus(VectorSource(TweetCorpus))
  TweetCorpus <- tm_map(TweetCorpus, PlainTextDocument)
  TweetCorpus <- tm_map(TweetCorpus, removePunctuation)
  TweetCorpus <- tm_map(TweetCorpus, removeWords, stopwords('english'))
  TweetCorpus <- tm_map(TweetCorpus, stemDocument)
  TweetCorpus <- tm_map(TweetCorpus, content_transformer(tolower),lazy=TRUE)
  TweetCorpus <- tm_map(TweetCorpus, PlainTextDocument)

```
Here is the first plot at output$wordcloud:

```{r}
  output$wordcloudT <- renderPlot({
  
 wordcloud(TweetCorpus, max.words = 100, random.order = FALSE,scale=c(8,1),colors=brewer.pal(8, "Dark2"))
 
 })
```

Then a simple frequency plot:

```{r}
times <- as.POSIXct(tweets_BS.df$created_at, format="%a %b %d %H:%M:%S %z %Y")

  output$freq_plot<- renderPlot({
   hist(times, breaks="mins")
  })
```

Finally, and very important for our next class, an output file that takes the location of your "click" on the word cloud plot:

```{r}
output$info_click <- renderText({
 paste0("x=", input$plot_click$x, "\ny=", input$plot_click$y)
  })
```

Think about how you can use that to make interactive plots and viusalizations, there is more information here: look for [interactive plots link](http://shiny.rstudio.com/articles/plot-interaction.html) on this [tutorial page](http://shiny.rstudio.com/articles/). You can familiarize yourself with a bit more involved interactive options [here at this link](http://shiny.rstudio.com/articles/plot-interaction-advanced.html).


You will be able to find the R files at [this link on Course's GitHub](https://github.com/hassanpour/QMSS_G4063/tree/master/lectures/Shiny_Primaries). Make sure you also upload 

1. your own tweets_BS.JSON (or whatever name your JSON tweet data file has), and 
2. my_oauth.Rdata (the authorization codes from our first session)

at your Shiny_Primaries directory. 


Next week we will discuss D3. 



