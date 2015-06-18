library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  

   output$distPlot <- renderPlot({
    b<-renderText(FactorInput())
    switch(input$Factor,
           "am" = coplot(mpg ~ hp | as.factor(am), data = mtcars, panel = panel.smooth, rows = 1),
           "cyl" = coplot(mpg ~ hp | as.factor(cyl), data = mtcars, panel = panel.smooth, rows = 1),
           "vs" = coplot(mpg ~ hp | as.factor(vs), data = mtcars, panel = panel.smooth, rows = 1),
           "gear" = coplot(mpg ~ hp | as.factor(gear), data = mtcars, panel = panel.smooth, rows = 1),
           "carb" = coplot(mpg ~ hp | as.factor(carb), data = mtcars, panel = panel.smooth, rows = 1)
          )
    
  })
  
})
