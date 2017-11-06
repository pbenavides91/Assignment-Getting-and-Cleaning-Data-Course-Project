library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Exam Marks Calculation and Interpretation"),
    
    sidebarPanel(
      numericInput('Databases', 'Insert your Database mark in percent', 80,min = 0, max = 100, step = 0.1) ,
      numericInput('Data_Analytics', 'Insert your Data Analytics mark in percent', 97, min = 0, max = 100, step = 0.1),
      numericInput('Project_Management', 'Insert your Project Management mark in percent',64, min = 0, max = 100, step = 0.1)
    ), 
    mainPanel(
      p('An organization is recruiting for three positions and interested individuals were asked to write three exams in Databases, Data analytics and Project Management.'),
      p('The outcome of the three exams was interpreted as follows:'),
      tags$div(
        tags$ul(
          tags$li('Average <70,       : Failed'),
          tags$li('Average [70-79] , : Considered for the database administrator position'),
          tags$li('Average [80-89] ,   :Considered for the data administrator position'),
          tags$li('Average >= 90 : Considered for the business intelligence manager position')
        )
      ),
      
      h4('Taking into account the values entered by you:'), 
      p('Databases:'), verbatimTextOutput("inputdatabasesmark"),
      p('Data analytics:'), verbatimTextOutput("inputdataAnalyticsmark"),
      p('Project Management:'), verbatimTextOutput("inputprojectmanagementmark"),h4('Your calulated AVERAGE RESULT is:'),
      verbatimTextOutput("estimation"),
      p('It means that you have:'),strong(verbatimTextOutput("diagnostic"))
      
    )
    
  )   
)