
library(shiny)

shinyUI(fluidPage(
  
  titlePanel(title = 'Printing your name and age!'),
  
  sidebarLayout(
    sidebarPanel(('Enter your personal credentials!'),
                 textInput('Name', 'Please enter your name!', ''),
                 textInput('Age',  'Please enter your age!', ''),
                 radioButtons('Gender', 'Please select your gender',  
                              list('Male', 'Female', 'Other'))),
    
    mainPanel(('Personal information!'),
              textOutput('myname'),
              textOutput('myage'),
              textOutput('mygender'),
              )
    
  )
))







