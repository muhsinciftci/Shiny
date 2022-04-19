
library(shiny)
library(bayesrules)
library(ggplot2)
theme_set(theme_minimal())

shinyUI(
  
  fluidPage(
    titlePanel(h4('SelectInput in Shiny!', align = 'center')),
    
    sidebarLayout(
      sidebarPanel(
        selectInput('Distribution', 'Please Choose the type:', c('normal', 'gamma')),
        
        
        sliderInput('Meanval', 'Please choose the Mean value', min = -5, max = 5,
                      value = 0, animate = T),
        sliderInput('Variance', 'Please choose the Variance', min = 5, max = 25,
                      value = 15, animate = T),
        sliderInput('Shapeval', 'Please choose the Shape value', min = 1, max = 15,
                      value = 5, animate = T),
        sliderInput('Rateval', 'Please choose the Rate Value', min = 1, max = 10,
                      value = 5, animate = T)
        
      ),
      
      mainPanel(
        plotOutput('dists')
      )
      
    )
    
  )
  
)





