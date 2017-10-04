library(shiny)
shinyUI(fluidPage(
  titlePanel(""),
  sidebarLayout(
    sidebarPanel(
      h2("Input"),
      dateInput("date1", "date", value = date(), format = "yyyy-mm-dd"),
      textInput("what", "what", value = ""),
      textInput("sum", "sum", value = ""),
      submitButton("Send")
    ),
    mainPanel(
      h3("Output"),
      textOutput("text")
    )
  )
))

