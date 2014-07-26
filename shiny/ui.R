library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Mortgage Calculator"),
  sidebarPanel(
    textInput(inputId="P", label = "Principal Amount"),
    textInput(inputId="i", label = "Interest (percentage)"),
    textInput(inputId="n", label = "Number of Payments"),
    actionButton("computeButton", "Compute!")
  ),
  mainPanel(
    p('Principal Amount'),
    textOutput('P'),
    p('interest'),
    textOutput('i'),
    p('Number of Payments'),
    textOutput('n'),
    p('Monthly Payment'),
    textOutput('M'),
    
    
    p('NOTE: Principal Amount is the Loaned amount.'),
    p('Interest is expressed in % (percentage), no need to put the % symbol.'),
    p('Number of Payments is needed to compute your monthly payment.'),
    p('CODE executes automatically after first button click.')
  )
))