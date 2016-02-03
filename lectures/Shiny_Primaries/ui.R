
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
                  selected = "Percent White"),
      
      sliderInput("range", 
                  label = "Range of time",
                  min = 0, max = 200, value = c(0, 200))
    ),
    
    mainPanel(
      
      plotOutput("wordcloudT",click = "plot_click"),
      verbatimTextOutput("info_click"),
      plotOutput("freq_plot")
    
    )

  )
  
))

