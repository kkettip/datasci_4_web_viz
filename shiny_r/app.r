# Import necessary libraries
library(shiny)
library(ggplot2)
library(dplyr)

# UI for the Shiny app
ui <- fluidPage(
  titlePanel("Obesity Age-adjusted Prevalence in CT by County"),
  sidebarLayout(
    sidebarPanel(
      selectInput("county", "Choose a county:", choices = NULL)
    ),
    mainPanel(
      plotOutput("barPlot")
    )
  )
)

# Server logic
server <- function(input, output, session) {
  
  # Load the dataset
  df <- reactive({
    url <- 'https://raw.githubusercontent.com/kkettip/datasci_4_web_viz/main/Datasets/PLACES__Local_Data_for_Better_Health__County_Data_2023_release%20%20CT.csv'
    read.csv(url)
  })
  
  # Filter the dataset
  df_obesity <- reactive({
    data <- df()
    filter(data, MeasureId == "OBESITY", Data_Value_Type == "Age-adjusted prevalence")
  })
  
  # Update county choices dynamically based on dataset
  observe({
    obesity_data <- df_obesity()
    updateSelectInput(session, "county", choices = sort(unique(obesity_data$LocationName)))
  })
  
  # Render the bar plot
  output$barPlot <- renderPlot({
    obesity_data <- df_obesity()
    county_data <- obesity_data[obesity_data$LocationName == input$county, ]
    avg_value <- mean(obesity_data$Data_Value, na.rm = TRUE)
    
    ggplot() +
      geom_bar(data = county_data, aes(x = LocationName, y = Data_Value, fill = LocationName), stat = "identity") +
      geom_hline(aes(yintercept = avg_value), linetype = "dashed", color = "dodgerblue") +
      labs(title = 'Obesity Age-adjusted Prevalence',
           y = 'Data Value (Age-adjusted prevalence) - Percent',
           x = 'Location (County)') +
      theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
      ylim(0, 30) +
      scale_fill_manual(values = c("lightcoral", "dodgerblue"))
  })
  
}

# Run the Shiny app
shinyApp(ui, server)