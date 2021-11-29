#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)
library(stringr)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Tarea 3"),
  sidebarPanel(
    
    fileInput("lecturaArchivo", "seleccione archivo",
              buttonLabel = 'Buscar',
              placeholder = 'ruta achivo'
    ),
  
  
  mainPanel (
   # DT::dataTableOutput ("ver"),
    plotOutput("histo", 
               click = "clickuno", 
               dblclick = "clickdos",
               hover="mouse_over",
               brush="mouse_brush")
    
  )  
  )    

))
