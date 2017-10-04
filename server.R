library(shiny)
shinyServer(function(input, output) {
  output$text <- renderText (paste(input$date1, 
                                   input$what,
                                   input$sum))
})

