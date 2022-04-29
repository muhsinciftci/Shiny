
library(shiny)

shinyUI(
  fluidPage(
    titlePanel(h3('RenderUI: Dynamic Interface with Tabs', align = 'center')),
    
    sidebarLayout(
      sidebarPanel(
        numericInput(inputId = 'numtabs', label = 'Enter the number of tabs', 1)
      ),
      
      mainPanel(
        uiOutput('tabs')
      )
    )
    
  )
)
