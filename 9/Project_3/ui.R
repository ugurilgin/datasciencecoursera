#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  titlePanel("Prediction of height"),
  sidebarLayout(
    sidebarPanel(
      textInput("caption", "https://github.com/ugurilgin/", "Data Summary"),
      verbatimTextOutput("value"),
      helpText("Prediction of the child's height considering gender and parent's height"),
      helpText("Parameters:"),
      sliderInput(inputId = "inFh",
                  label = "Father's height (cm):",
                  value = 150,
                  min = 150,
                  max = 220,
                  step = 1),
      sliderInput(inputId = "inMh",
                  label = "Mother's height (cm):",
                  value = 140,
                  min = 140,
                  max = 200,
                  step = 1),
      radioButtons(inputId = "inGen",
                   label = "Child's gender: ",
                   choices = c("Female"="female", "Male"="male"),
                   inline = TRUE)
     
    ),
    
    mainPanel(
      htmlOutput("pText"),
      htmlOutput("pred"),
      plotOutput("Plot", width = "50%")
      
    )
  
   
    )

 
  )


)