#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$grafica_base_R <- renderPlot({

    
    if (is.null(input$clk)==FALSE)
    {colorA="green"
    colorB="green" }
    else if (is.null(input$dclk)==FALSE)
    {colorA="white"
    colorB="black"}
    else if (is.null(input$mouse_over)==FALSE)
    { colorA="gray"
    colorB="gray"}
    else if (is.null(input$mouse_brush)==FALSE)
    {colorA="green"
    colorB="black" 
    }
    else {
      colorA="blue"
      colorB="blue" }
    
    
    plot(mtcars$wt, mtcars$mpg, xlab='wt', ylab='millas pro galon',
         col=colorA, bg = colorB  , pch = 21)
  
    
  })
  
  
  
    output$click_data <- renderPrint(
    
    list(
     click_XY= c(input$clk$x, input$clk$y),
     doble_click_XY= c(input$dclk$x, input$dclk$y))
    
    
  )
    
})
