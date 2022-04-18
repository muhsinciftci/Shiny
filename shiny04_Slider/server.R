
library(shiny)
library(bayesrules)

shinyServer(
  function(input, output) {
    
    output$out  <- renderText(paste('You selected the number:', input$Slider))
    output$dist <- renderPlot(plot_beta(alpha = input$Alpha, beta = input$Beta))
    
  }
)
