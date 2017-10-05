library(shiny)
library(DT)

shinyUI(fluidPage(
  sidebarLayout(
    sidebarPanel(
      h4("Input"),
      dateInput("date1", "date", value = date(), format = "yyyy-mm-dd"),
      textInput("what", "what", value = ""),
      textInput("sum", "sum", value = ""),
      actionButton("submit", "Submit"),
      width = 3
    ),
    mainPanel(
      h3("Table"),
      DT::dataTableOutput("responses", width = 500)
    )
  )
))

