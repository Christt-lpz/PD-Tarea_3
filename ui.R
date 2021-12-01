#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  titlePanel("Tara 3"),
  
  
  tabsetPanel(
    tabPanel ('Graficas  shiny',
              h1('Graficas en shiny'),
              plotOutput('grafica_base_R',
                         click ='clk',
                         dblclick='dclk',
                         hover ='mouse_hover',
                         brush = 'mouse_brush'
                         ),
              verbatimTextOutput('click_data')
              
              
    )
    

  
  )
))

