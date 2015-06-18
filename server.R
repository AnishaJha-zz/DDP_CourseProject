library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  

   output$distPlot <- renderPlot({
    b<-renderText(FactorInput())
    switch(input$Factor,
           "am" = coplot(mpg ~ hp | as.factor(am), data = mtcars, panel = panel.smooth, rows = 1,xlab="Horse power",ylab="Miles per gallon"),
           "cyl" = coplot(mpg ~ hp | as.factor(cyl), data = mtcars, panel = panel.smooth, rows = 1,xlab="Horse power",ylab="Miles per gallon"),
           "vs" = coplot(mpg ~ hp | as.factor(vs), data = mtcars, panel = panel.smooth, rows = 1,xlab="Horse power",ylab="Miles per gallon"),
           "gear" = coplot(mpg ~ hp | as.factor(gear), data = mtcars, panel = panel.smooth, rows = 1,xlab="Horse power",ylab="Miles per gallon"),
           "carb" = coplot(mpg ~ hp | as.factor(carb), data = mtcars, panel = panel.smooth, rows = 1,xlab="Horse power",ylab="Miles per gallon"),
           "none" = {plot(mtcars$mpg,mtcars$hp, main="Cars Plot",xlab="Horse Power", ylab="Miles Per Gallon ", pch=19);
           abline(lm(mtcars$hp~mtcars$mpg), col="red")}
           )
    
  })
  
})

