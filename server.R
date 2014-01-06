library(shiny)
source("functions.R", local = TRUE)

shinyServer(function(input, output) {
  
  resultValue <- reactive({
      	result_h2l(input$k, input$r2n, input$p)
  })
  
  output$r2n_ui <- renderUI({
  	my_max <- limit_r2n(input$k, input$p)
    my_max <- round(my_max, 2)
    sliderInput("r2n", "Nagelkerke's R2 value:", min = 0, max = my_max, value = 0.2)
  })

  output$result <- renderText(round(resultValue(), digits = 2))
  
})