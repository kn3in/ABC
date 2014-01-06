library(shiny)
source("custom_html.R")

shinyUI(pageWithSidebar(
  headerPanel("ABC: A Better Coefficient of Determination for Genetic Profile Analysis"),
  
  sidebarPanel(
      h4("Input"),
      wellPanel(sliderInput("k", "Disease Prevalence:", min=0, max=0.5, value=0.01),
      helpText("Prevalence of disease in the population")),
      wellPanel(sliderInput("p", "P:", min=0, max=1, value=0.5),
      helpText("The proportion of cases in the case-control sample from which R2N was estimated")),
      wellPanel(uiOutput("r2n_ui"),
      helpText("Nagelkerke's R2N value obtained from a logistic regression in a case-control sample"))),
  
  mainPanel(
        wellPanel(
          h4("Result"),
          p("Proportion of variance in liability explained by the predictor:"),
          htmlOutput("result"),
          p("Via equation 15 of Lee et al. (see below) convert Nagelkerke's R2 to an R2 in liability at the population level.")),
        wellPanel(h4("Citation:"),
        p("Lee SH, Goddard ME, Wray NR, Visscher PM. (2012)", a(href="http://onlinelibrary.wiley.com/doi/10.1002/gepi.21614/abstract", "A better coefficient of determination for genetic profile analysis."), "Genet Epidemiol. 2012 Apr;36(3):214-24. doi: 10.1002/gepi.21614."),
        p("Written by Konstantin Shakhbazov", a(href="https://github.com/kn3in/ABC", "Source code at GitHub")))
)))
