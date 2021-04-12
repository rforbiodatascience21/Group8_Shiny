ui <- fluidPage(
  titlePanel("DNA sequence"),
  sidebarPanel(
    textInput("dna", "DNA String", "ATCTTTAC"),
    submitButton("Submit", icon("submit")),
  ),
  mainPanel(verbatimTextOutput("Codens")
    
))

server <- function(input, output){
  output$Codens <- renderText({
    x <- input$dna
   mk_codons(x)
    })
}

shinyApp(ui, server)
