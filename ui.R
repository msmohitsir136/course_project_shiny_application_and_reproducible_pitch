library(shiny)
data("USArrests")
# USArrests$States <- row.names(USArrests)

shinyUI(fluidPage(
  titlePanel('US crime data in each states'),
  tags$p('This application gives the visulization of crimes in US states(in arrests per 100,000 residents for assault, murder, and rape in each of the 50 US states in 1973. 
        Also given is the percent of the population living in urban areas). To get crime information in require state user has to select the state in given drop-down.'),
  
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