
library(shiny)

shinyUI(fluidPage(
  
  titlePanel(title = 'Printing your name and age!'),
  
  sidebarLayout(
    sidebarPanel(('Enter your personal credentials!'),
                 textInput('Name', 'Please enter your name!', ''),
                 textInput('Age',  'Please enter your age!', '')),
    
    mainPanel(('Personal information!'),
              textOutput('myname'),
              textOutput('myage')
              )
    
  )
))







