
library(shiny)
library(ggplot2)
theme_set(theme_light())

shinyServer(
  function(input, output){
    var <- reactive({
      switch(input$dataset,
             'mtcars' = names(mtcars),
             'trees'  = names(trees),
             'iris'   = names(iris)
             )
      })
    
    output$vx <- renderUI({
      selectInput(inputId = 'variablex', label = 'Select (X) Variable',
                  choices = var())
    })
    
    output$vy <- renderUI({
      selectInput(inputId = 'variabley', label = 'Select (Y) Variable',
                  choices = var())
    })
    
    output$plot <- renderPlot({
      ggplot(get(input$dataset)) +
        geom_point(aes_string(input$variablex, input$variabley), 
                   color = 'blue', size = 7.5)
    })
  }
)
