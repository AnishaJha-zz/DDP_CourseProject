library(shiny)

# Define UI for application that takes input the Month for which the airquality data is plotted.
shinyUI(fluidPage(
  # Application title
  titlePanel("Plot the Cars"),
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      selectInput("Factor", "Factor:",choices=c("cyl","vs","am","gear","carb"),selected="am")   
      ),
    mainPanel(
      plotOutput("distPlot"),
      #h3(textOutput("Fact1", container = span)),
      h3("Documentation:"),
      h5("This app plots the cars from the mtcars dataframe"),
      h5("The mpg and hp of the cars in the dataset are plotted according to the factor selected."),
      h5("For eg: If the factor is am, the mpg and hp for the automatic and manual transmissions are plotted"),
      h5("We can observe from the graphs that as hp of the vehicle increases its mpg drops more drastically initially for automatic transmission vehicle than manual vehicle")
      
    )
  )
))
