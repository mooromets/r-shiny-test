library(shiny)
library(DT)

shinyUI(fluidPage(
  fluidRow(
    column(2, 
           dateInput("date1", "date", value = date(), format = "yyyy-mm-dd")
           ),
    column(3,
           textInput("what", "what", value = "")
           ),
    column(2,
           textInput("sum", "sum", value = "")
           )
  ),
  fluidRow(
    column(4, offset = 1,
      actionButton("submit", "Submit", style="color: #fff; background-color: #337ab7; 
                   border-color: #2e6da4", width = '100%')
    )
  ),
  hr(),
  DT::dataTableOutput("responses", width = 500)
))

