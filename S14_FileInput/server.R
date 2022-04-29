
library(shiny)

shinyServer(
  function(input, output){
    
    # First get the data
    data <- reactive({
      file1 <- input$file
      if (is.null(file1)) {return()}
      read.table(file = file1$datapath, sep = input$sep, header = input$header, stringsAsFactors = input$StringasFactor)
    })
    
    output$filedf <- renderTable({
      if (is.null(data())) {return()}
      input$file
    })
    
    output$summ <- renderTable({
      if (is.null(data())) {return()}
      summary(data())
    })
    
    output$table <- renderTable({
      if (is.null(data())) {return()}
      data()
    })
    
    output$tb <- renderUI({
      if (is.null(data())) {
        h3('Powered by Rstudio')
      }
      else {
        tabsetPanel(tabPanel('About the File', tableOutput('filepdf')),
                    tabPanel('Data', tableOutput('table')),
                    tabPanel('Summary', tableOutput('summ'))
                    )
      }
    })
  }
)
