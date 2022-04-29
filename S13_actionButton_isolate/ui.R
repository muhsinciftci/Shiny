
library(shiny)

shinyUI(
  fluidPage(
    includeCSS('style.css'),
    titlePanel(h3('Partially Controlling the actions', align = 'center')),
    
    sidebarLayout(
      sidebarPanel(
        textInput(inputId = 'text1', label = 'Enter first name'),
        textInput(inputId = 'text2', label = 'Enter last name'),
        actionButton(inputId = 'action', label = 'Update last name'),
        br(),
        helpText('Click on the button to update the last name!')
      ),
      mainPanel(
        textOutput('first_name'),
        textOutput('last_name')
      )
    )
  )
)



