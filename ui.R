library(shiny)
data("USArrests")
# USArrests$States <- row.names(USArrests)

shinyUI(fluidPage(
  titlePanel('US crime data in each states'),
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId='state', label = 'State', choices = row.names(USArrests), selected = 'State'),
      # selectInput(inputId='crime', label = 'crime', choices = c("Murder", "Assault", "UrbanPop", "Rape"), selected = 'Crime')
    ),
  
    mainPanel(
      h3('Graph of crime in US states'),
      htmlOutput('plot')
    )
  )
))