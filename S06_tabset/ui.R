
library(shiny)
library(ggplot2)
theme_set(theme_minimal())

shinyUI(
  fluidPage(
    titlePanel(h3('Demonsration of the Tabset in Shiny', align = 'center')),
    
    sidebarLayout(
      sidebarPanel(
        selectInput('var', 'Select the Variable from data set', 
                    choices = c('mpg', 'cyl', 'disp', 'hp', 'drat', 'qsec', 'am', 'gear', 'carb'),
                    ),
        br(),
        sliderInput('bins', 'Select the number of bins for the histogram', 
                    min = 5, max = 15, value = 10),
        br(),
        radioButtons('color', 'Choose the color', choices = c('grey', 'orange', 'cyan'),
                     selected = 'orange')
      ),
      
      mainPanel(
        tabsetPanel(
          type = 'tab',
          tabPanel('Series', tableOutput('series')),
          tabPanel('Summary', verbatimTextOutput('summary')),
          tabPanel('Chart', plotOutput('chart')),
          tabPanel('Data Set', tableOutput('dat')),
          tabPanel('Data Structure', verbatimTextOutput('str'))
        )
        
        
      )
      
    )
  )
)
