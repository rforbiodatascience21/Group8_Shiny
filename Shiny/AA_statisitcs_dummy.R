ui <- fluidPage(
  titlePanel("Amino Acids"),
    sidebarPanel(
      textInput("aa_string", "Amino Acid String", "ALMVGLFNDR"),
      submitButton("Submit", icon("submit")),
      ),
    mainPanel(
      h3("Weight in Dalton"),
      verbatimTextOutput("weight_dalton"),
      h3("Weight in Attogramm"),
      verbatimTextOutput("weight_agramm"),
      h3("Amino Acid Groups"),
      plotOutput("aa_plot")
    )
)

server <- function(input, output){
  output$weight_dalton <- renderText({
    x <- input$aa_string
    peptide_weight(x)
  })
  output$weight_agramm <- renderText({
    x <- input$aa_string
    peptide_weight(x) * 0.000001660530000001
  })
  output$aa_plot <- renderPlot({
    x <- input$aa_string
    aa_statistics(x)
  })
}
shinyApp(ui, server)

