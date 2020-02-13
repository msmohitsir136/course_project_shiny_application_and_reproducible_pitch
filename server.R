library(shiny)
suppressPackageStartupMessages(library(googleVis))
data("USArrests")

shinyServer(function(input, output) {
  state <- reactive({input$state})

  record <- reactive(USArrests[rownames(USArrests) == state(), ])
  #df <- reactive(data.frame(crime=colnames(record()), val=record()))
  columnChart <- reactive(gvisColumnChart(record(), options=list(width=400, height=450)))
  output$plot <- renderGvis(columnChart())

})