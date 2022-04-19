
library(shiny)
library(ggplot2)
theme_set(theme_minimal())

shinyServer(
  
  function(input, output){
    
    output$summary <- renderPrint({
      summary(mtcars[input$var])
    })
    
    output$str <- renderPrint({
      str(mtcars)
    })
    
    output$dat <- renderTable({
      mtcars
    })
    
    output$series <- renderTable({
      mtcars[input$var]
    })
    
    output$chart <- renderPlot({
      colnm <- which(colnames(mtcars) == input$var)
      hist(mtcars[, colnm], col = input$color, breaks = input$bins,
           xlab = 'Variable', main = 'Histogram')
    })
    
  }
  
  
  
)
