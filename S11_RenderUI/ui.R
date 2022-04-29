
library(shiny)

shinyUI(
  fluidPage(
    titlePanel(h3('RenderUI: Dynamic Interface for Shiny!', align = 'center')),
    
    sidebarLayout(
      sidebarPanel(
        selectInput(inputId = 'dataset', label = 'Choose the data set', 
                    choices = c('mtcars', 'trees', 'iris'), selected = 'mtcars'),
        br(),
        uiOutput('vx'),
        br(),
        uiOutput('vy')
      ),
      mainPanel(
        plotOutput('plot')
      )
    )
    
  )
)
