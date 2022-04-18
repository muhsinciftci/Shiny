
library(shiny)
library(bayesrules)
library(ggplot2)
theme_set(theme_minimal())

shinyUI(
  
  fluidPage(
    titlePanel('Slider Input in Shiny!'),
    
    sidebarLayout(
      sidebarPanel(
        sliderInput('Slider', 'Please select the Value:', min = 0, max = 10,
                    step = 1, value = 5, animate = T),
        sliderInput('Alpha', 'Please choose the Alpha value', min = 1, max = 10,
                    value = 5, animate = T),
        sliderInput('Beta', 'Please choose the Beta value', min = 1, max = 10,
                    value = 5, animate = T)
        
      ),
      
      mainPanel(
        textOutput('out'), # From the output name in server file
        plotOutput('dist')
      )
      
    )
    
  )
  
)





