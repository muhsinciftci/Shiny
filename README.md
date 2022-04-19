This project contains some simple shiny apps I created with R. They are not complex but rather serve as  learning shiny. 

# Functions Used
## ui.R
- 1.1 textInput : To fill blanks with some text
- 1.2 textOutput: To show the output of the text
- 2.1 radioButtons : To create clickable  buttons
- 3.1 sliderInput : Slide the input for a range (ex, bins in a histogram)
- 3.2 plotOutput : To show the chart as an output
- 4.1 selectInput : Select from drop down menu
- 5.1 tabsetPanel: Show the results in a tab

## server.R
- 1.1 renderText : Render the text coming from input data
- 3.2 renderPlot: create the plot, render it
- 5.1 renderTable: render the table
-5.2 renderPrint: Print without changing formatting
- 