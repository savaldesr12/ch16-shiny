# UI for scatterplot
library(shiny)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mtcars)

# Create a shinyUI with a `fluidPage` layoout
shinyUI(fluidPage(
  # A page header
  h1 ("Miles per Gallon"), 
  
  # Add a select input for the x variable
  selectInput("xvar", label = "X Variable", choices = select_values, selected =  "mpg"), 
  
  # Add a select input for the y variable
  selectInput("yvar", label = "Y Variable", choices = select_values, selected =  "cyl"),

  # Add a sliderInput to set the size of each point
  sliderInput("size", label = "Size of Points", min = 1, max = 10, step = 1, value = 5),

  # Add a selectInput that allows you to select a color from a list of choices
  selectInput("color", label = "Color of Points", choices = list("Blue" = "blue", "Red" = "red", "Green" = "green"),
              selected = "Green"),


  # Plot the output with the name "scatter"
  plotOutput("scatter")
))
