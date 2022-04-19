
library(shiny)
library(bayesrules)
library(ggplot2)
theme_set(theme_minimal())

shinyServer(
  function(input, output) {
    
    output$dists <- renderPlot({
      
      dist_type <- as.character(input$Distribution)
      
      if (dist_type == 'normal') {
        plot_normal(mean = input$Meanval, sd = input$Variance) +
          ggtitle('Normal Distribution')
      }
      else{
        plot_gamma(shape = input$Shapeval, rate = input$Rateval) +
          ggtitle('Gamma Distribution')
      }

    }
    )
  
  }
)
