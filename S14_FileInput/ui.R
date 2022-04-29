
library(shiny)

shinyUI(
  fluidPage(
    includeCSS('style.css'),
    titlePanel(h2('Use Input Files', align = 'center')),
    
    sidebarLayout(
      sidebarPanel(
        fileInput(inputId = 'file', label = 'Load the File', multiple = TRUE),
        br(),
        checkboxInput(inputId = 'header', label = 'Header', value = TRUE),
        checkboxInput(inputId = 'StringasFactor', label = 'String as Factor', value = F),
        br(),
        radioButtons(inputId = 'sep', label = 'Seperator', choices = c(Comma = ',', semicolon = ';', Tab = '\t',
                                                  Space = ''))
      ),
      mainPanel(
        uiOutput('tb')
      )
    )
  )
)
