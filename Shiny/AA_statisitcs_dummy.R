ui <- fluidPage(
  titlePanel("Amino Acids"),
    sidebarPanel(
      textInput("aa_string", "Amino Acid String", "ALMVGLFNDR"),
      submitButton("Submit", icon("submit")),
      ),
    mainPanel(
      plotOutput("aa_plot")
    )
)

server <- function(input, output){
  output$aa_plot <- renderPlot({
    x <- input$aa_string
    aa_statistics(x)
  })
}
shinyApp(ui, server)

