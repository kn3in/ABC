library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("ABC: A Better Coefficient of Determination for Genetic Profile Analysis"),
  
  sidebarPanel(
      wellPanel(sliderInput("k", "Disease Prevalence:", min=0, max=1, value=0.05))),
  
  mainPanel(
      tabsetPanel(
        tabPanel("Main"),
        tabPanel("About",
        wellPanel(h4("ABC:"),
          p("Lee SH, Goddard ME, Wray NR, Visscher PM. (2012)", a(href="http://onlinelibrary.wiley.com/doi/10.1002/gepi.21614/abstract", "A better coefficient of determination for genetic profile analysis."), "Genet Epidemiol. 2012 Apr;36(3):214-24. doi: 10.1002/gepi.21614."),
          p("Written by Konstantin Shakhbazov", a(href="https://github.com/kn3in/ABC", "Source code at GitHub")) ))))
))
