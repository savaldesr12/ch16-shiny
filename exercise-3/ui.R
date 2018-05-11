# UI for scatterplot
library(shiny)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mtcars)

# Create a shinyUI with a `fluidPage` layoout
fluidPage(
  # A page header
  title = "Miles per Gallon", 
  
  # Add a select input for the x variable
  selectInput("xvar", label = )
  
  # Add a select input for the y variable


  # Add a sliderInput to set the size of each point


  # Add a selectInput that allows you to select a color from a list of choices



  # Plot the output with the name "scatter"
)
