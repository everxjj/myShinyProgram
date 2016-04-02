library(shiny)
library(datasets)

shinyServer(function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    input$row #使得原始输入变量row可以实时改变
  })
  
  # 输出变量名为mytable
  output$mytable <- renderTable({
    iris[1:datasetInput(),]
  })
  
  # 输出变量名为irisPlot
  output$irisPlot <- renderPlot({
    plot(iris[1:input$row,])
  })
})
