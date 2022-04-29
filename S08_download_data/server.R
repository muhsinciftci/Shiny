
library(shiny)

shinyServer(
  function(input, output){
    datasetinput <- reactive({
      switch(input$dataset,
             'iris'   = iris,
             'mtcars' = mtcars,
             'trees'  = trees
             )
    })
    
    output$dat <- renderTable({
      datasetinput()
    })
    
    file_ext <- reactive({
      switch(input$format,
             'Excel (csv)' = 'csv', 
             'Text (txt)'  = 'txt')
    })
    
    output$down <- downloadHandler(
      filename = function(){
        paste(input$dataset, file_ext(), sep = '.')
      }
      
      content = function(file){
        sep = switch(input$format,
                     'Excel (csv)' = ',',
                     'Text (txt)'  = '\t')

        write.table(datasetinput(), file = file, sep = sep, row.names = FALSE)
      }
    )
  }
)


 
