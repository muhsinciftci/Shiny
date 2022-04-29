
library(shiny)

shinyServer(
  function(input, output){
    
    output$first_name <- renderText({
      paste('Your first name is ', input$text1)
    })
    
    output$last_name <- renderText({
      input$action
      isolate(paste('Your last name is ', input$text2))
    })
    
  }
)
