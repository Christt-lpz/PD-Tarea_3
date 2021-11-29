#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)
library(DT)
library(stringr)
library(ggplot2)

library(data.table) #libreria necesaria para cambido de nombre

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  data<-reactive({
    contenido_archivo<-input$lecturaArchivo
    
    if  (is.null(contenido_archivo))
    {
      return(NULL)
    }else 
    {out<-readr::read_csv(contenido_archivo$datapath)  
    df= data.frame(out)
    return(df$yr)}
    
  })
  
  output$histo <-renderPlot({
    
    if (is.null(input$clickuno)==FALSE)
    {color="green"
    bor="black"}
   else if (is.null(input$clickdos)==FALSE)
   {color="white"
   bor="black"}
    else if (is.null(input$mouse_over)==FALSE)
    {color="gray"
    bor="black"}
    
    else if (is.null(input$mouse_brush)==FALSE)
    {bor="green"
    }
    else {color="blue"
          bor="black"}
    print(color)
    
      hist(data(), xlab = "año",  ylab = "Cantida de temblores",
           main = "Historial de temblores", 
           col=color, border = bor )

  }) 


  
})

