library(shiny)
source("iomongo.R")

shinyServer(function(input, output) {
  output$text <- renderText (paste(input$date1, 
                                   input$what,
                                   input$sum))
  
  formData <- reactive({
    #data <- sapply(fields, function(x) input[[x]])
    data <- data.frame(date = input$date1, 
                       what = input$what,
                       sum =  input$sum)
  })
  
  observeEvent(input$submit, {
    saveData(formData())
    updateTextInput("what", value = " ")     
    updateTextInput("sum", value = " ")  
  })
  
  output$responses <- DT::renderDataTable({
    input$submit
    loadData()
  })   
  
})

