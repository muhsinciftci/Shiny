
library(shiny)

shinyUI(fluidPage(
 
  titlePanel(title = 'This is my first shiny app!'),
  sidebarLayout(
    position = 'right',
    sidebarPanel(h1('This is sidebar panel h1'),
                 h2('This is sidebar panel h2'),
                 h3('This is sidebar panel h3'),
                 ),
    mainPanel('The main output text is displayed here!')
    
  )
)
)








