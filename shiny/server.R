library(shiny)

shinyServer(
  function(input, output) {
    output$P <- renderText(if(input$P>=0){input$P}else{"invalid"})
    output$i <- renderText(if((input$i>=0)){input$i}else{"invalid"})
    output$n <- renderText(if(input$n>0){input$n}else{"invalid"})
    output$M <- renderText({
      if(input$computeButton >= 1){
        P <- as.numeric(input$P)
        i <- as.numeric(input$i)
        n <- as.numeric(input$n)
        
        M <- compute(P,i,n)
        
        isolate(
          paste("Monthly Payment with", i, "% interest is", M, "in", n, "months.")
        )
      }
      #isolate(
      #  paste(input$P, input$i, input$n)
      #)
    })
  }
)

compute <- function(P, i = 0, n) {
  if( i == 0 ){
    M_payment = P / n * 1
  }else{
    i = i / 100
  }
  
  M_payment <- P * ((i * (1 + i) ^n)/(((1+i)^n)-1))
  #M_payment <- P *(((i/100) * (1 + (i/100)) ^n)/((1+(i/100))^n)-1)
  print(round(M_payment,2))
  round(M_payment,2)
}
## Mortgage Formula
## M <- P *(((i/100) * (1 + (i/100)) ^n)/((1+(i/100))^n)-1)