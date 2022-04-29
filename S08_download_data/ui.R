
library(shiny)

shinyUI(
  fluidPage(
    titlePanel(h3('Download the Datasets', align = 'center')),
    
    sidebarLayout(
      sidebarPanel(
        selectInput(inputId = 'dataset', label = 'Select the Dataset', 
                    choices = c('mtcars', 'iris', 'trees'),
                    selected = 'iris'),
        br(),
        
        radioButtons(inputId = 'format', label = 'Choose the format',
                     choices = c('Excel (csv)', 'Text (txt)'), selected = 'Excel (csv)'),
        br(),
        helpText('Click the button to download the Data set'),
        downloadButton('down', label = 'Download the File')
      ),
      
      mainPanel(
        tableOutput('dat')
      )
    )
  )
)
