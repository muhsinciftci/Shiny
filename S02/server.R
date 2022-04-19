
library(shiny)

shinyServer(
  function(input, output) {
    output$myname <- renderText(input$Name)
    output$myage  <- renderText(input$Age)
  }
)
