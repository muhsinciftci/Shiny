
library(shiny)
library(ggplot2)
theme_set(theme_minimal())

shinyServer(
  function(input, output){
    x <- reactive({
      iris[ ,input$var1]
    })
    y <- reactive({
      iris[ ,input$var2]
    })
    
    output$plot <- renderPlot({
      plot(x(), y(), xlab = input$var1, ylab = input$var2)
    })
    
    # Download the file section
    output$down <- downloadHandler(
      filename = function(){
        paste('iris', input$var3, sep = '.')
      },
      
      content = function(file){
        if (input$var3 == 'png') {
          png(file)
        }
        else{
          pdf(file)
        }
      plot(x(), y())
      dev.off()
      }
      
    )
    
  }
)
