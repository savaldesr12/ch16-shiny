### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 
shinyServer(function(input, output){
  output$scatter <- renderPlot({
# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter
    
    # Store x and y values to plot
    x <- mtcars[[input$xvar]]
    y <- mtcars[[input$yvar]]

    # Store the title of the graph in a variable
    title <- paste0("Mtcars Dataset: ", input$xvar, " vs ", input$yvar)
    
    # Create ggplot scatter
    plot_mt <- ggplot() + 
      geom_point(aes(x = x, y = y), size = input$size, color = input$color) + 
      labs(x = input$xvar, y = input$yvar, title =  title)
    plot_mt
})
})