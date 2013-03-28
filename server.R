library(shiny)
source("functions.R", local=TRUE)

shinyServer(function(input, output) {
  
  resultValue <- reactive({
    result_h2l(input$k, input$r2n, input$p)
  })
  
  output$result <- renderText(
      knit2html(text = paste0("$h^2_l$: ", round(resultValue(), digits = 2)))
  )
  
})