
library(shiny)

shinyServer(
  function(input, output){
    output$txt1 <- renderText({
      paste('Your first name is:', input$text1)
    })
    
    output$txt2 <- renderText({
      paste('Your last name is:', input$text2)
    })
    
    
  }
)
