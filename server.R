library(shiny)
library(knitr)
source("functions.R", local=TRUE)

shinyServer(function(input, output) {
  
  resultValue <- reactive({
    result_h2l(input$k, input$r2n, input$p)
  })
  
  output$result <- renderText(
      paste(knit2html(text = paste0("$h^2_l$: ", round(resultValue(), digits = 3))),
      tags$script("MathJax.Hub.Queue([\"Typeset\",MathJax.Hub]);"))
  )
  
})