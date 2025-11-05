# File: generate_plot.R
# Purpose: To create an interactive graph and save it as an HTML file.

# Install necessary packages if not already installed
if (!require(plotly)) {
  install.packages("plotly")
}
if (!require(htmlwidgets)) {
  install.packages("htmlwidgets")
}
# 1. Load the library
library(plotly)

# 2. Create sample data
Animals <- c("giraffes", "orangutans", "monkeys")
SF_Zoo <- c(20, 14, 23)
LA_Zoo <- c(12, 18, 29)
data <- data.frame(Animals, SF_Zoo, LA_Zoo)

# 3. Create an interactive plot
fig <- plot_ly(data, x = ~Animals, y = ~SF_Zoo, type = 'bar', name = 'SF Zoo')
fig <- fig %>% add_trace(y = ~LA_Zoo, name = 'LA Zoo')
fig <- fig %>% layout(yaxis = list(title = 'Count'), barmode = 'stack', title = 'Zoo Animal Count')

# 4. This is the most important step!
#    Save the plot as a self-contained HTML file.
htmlwidgets::saveWidget(fig, "r_graph.html")

print("Successfully generated r_graph.html!")
