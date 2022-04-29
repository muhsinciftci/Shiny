
library(shiny)

shinyServer(
  function(input, output){
    
    output$tabs <- renderUI({
      # Apply a function to a list:
      Tabs <- lapply(paste('Tab num:', 1:input$numtabs, sep = ' '), tabPanel)
      
      do.call(tabsetPanel, Tabs)
    })
    
    
    
    
  }
)
