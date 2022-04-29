
library(shiny)

shinyServer(
  function(input, output){
    output$dataname <- renderText({
      paste('Structure of the Dataset:', input$datasets)
    })
    
    output$str <- renderPrint({
      str(get(input$datasets))
    })
    
    output$observation <- renderText({
      paste('First', input$obs, 'Observations of the', input$datasets, 'Data set')
    })
    
    output$view <- renderTable({
      head(get(input$datasets), input$obs)
    })
    
    
  }
)
