library(shiny)

# Define UI for application that plots random distributions
shinyUI(pageWithSidebar(

  # Application title
  headerPanel("Fixed Payment Amortizer"),

  # Sidebar with a slider input for number of observations
  sidebarPanel(
    p("Select your loan parameters (Loan Amount, Interest Rate, & Fixed Payment
      Amount) and see the calculated Loan Term, Total Finance Charge, and Total
      of all loan payments. 
      Also see a plot of the remain loan balance as the loan is paid off.
      Lastly, the full amortization table is available to inspect"),
    h2('Loan Settings'),
    sliderInput("loanAmount",
                "Loan Amount",
                min = 3000,
                max = 50000,
                value = 10000,
                step= 1000),

    sliderInput("interestRate",
                "Interest Rate",
                min = 0,
                max = 10,
                value = 3,
                step= 0.125),

    sliderInput("payment",
                "Monthly Payment",
                min = 100,
                max = 800,
                value = 400,
                step= 25),

    helpText("Note - Select the parameters of the loan you want:",
             "Loan Amount is the amount of money you would like to borrow.",
             "Interest Rate is the purposed interest rate that you are eligible for.",
             "Monthly payment is the amount of money you would pay back each month.")
  ),

  # Show a plot of the generated distribution
  mainPanel(
    tabsetPanel(
      tabPanel("Summary",
        h3('Fixed Amorization Summary'),
        h4('Loan Parameters'),
        fluidRow(
          column(3,
            h5('Loan Amount'),
            textOutput("loanAmount")),
          column(3,
            h5('Interest Rate'),
            textOutput("interestRate")),
          column(3,
            h5('Monthly Payment'),
            textOutput("payment"))),
        h4('Calculated Amoritzation'),
        fluidRow(
          column(3,
            h5('Loan Term'),
            textOutput("term")),
          column(3,
            h5('Finance Change'),
            textOutput("financeCharge")),
          column(3,
            h5('Total of Payments'),
            textOutput("totalOfPayments")))
      ),
      tabPanel("Plot",
        plotOutput("payoffHistogram")),
      tabPanel("Amortization Table",
        tableOutput("schedule"))
    )
  )
))
