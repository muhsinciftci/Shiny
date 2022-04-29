
library(shiny)

shinyUI(
  fluidPage(
    titlePanel('Submit Data with a Button'),
    
    sidebarLayout(
      sidebarPanel(
        textInput(inputId = 'text1', label = 'Enter your Name'),
        textInput(inputId = 'text2', label = 'Enter your Last Name'),
        submitButton('Update!'),
        helpText('Click on the Button to Update the Text ')
      ),
      
      mainPanel(
        textOutput('txt1'),
        textOutput('txt2')
      )
    )
  )
)

