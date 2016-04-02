library(shiny)
shinyUI(fluidPage(
  
  # Application title
  titlePanel("myApp1-iris data"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("row","Row number of data to view",min = 1,max=150,value=5)
    ),
   
    mainPanel(
      tableOutput("mytable"),
      plotOutput("irisPlot")
    )
  )
))
