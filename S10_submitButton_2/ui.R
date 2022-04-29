
library(shiny)

shinyUI(
  fluidPage(
    titlePanel('Yet Another Example of Submit Button'),
    
    sidebarLayout(
      sidebarPanel(
        selectInput(inputId = 'datasets', label = 'Choose the Data Set',
                    choices = c('mtcars', 'iris', 'trees'), selected = 'mtcars'),
        numericInput(inputId = 'obs', label = 'Choose the number of rows', 6),
        submitButton('Update!')
      ),
      
      mainPanel(
        h3(textOutput('dataname')),
        verbatimTextOutput('str'),
        
        h3(textOutput('observation')),
        tableOutput('view')
      )
    )
    
  )
)
