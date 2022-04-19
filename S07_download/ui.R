
library(shiny)
library(ggplot2)
theme_set(theme_minimal())

shinyUI(
  fluidPage(
    titlePanel(h3('Create a download button for charts')),
    
    sidebarLayout(
      sidebarPanel(
        selectInput(inputId = 'var1', label = 'Select Variable for x Axis', 
                    choices = c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width'),
                    selected = 'Sepal.Length'),
        
        selectInput(inputId = 'var2', label = 'Select Variable for y Axis', 
                    choices = c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width'),
                    selected = 'Sepal.Width'),
        
        radioButtons(inputId = 'var3', label = 'Choose the file format',
                     choices = c('png', 'pdf'), selected = 'png')
      ),
      
      mainPanel(
        plotOutput('plot'),
        downloadButton('down', label = 'Download the File')
      )
    )
  )
)
