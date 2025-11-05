# File: generate_plot.py
# Purpose: To create an interactive graph and save it as an HTML file.

# 1. Import necessary libraries
# If you don't have plotly installed, uncomment the next line to install it
# !pip install plotly pandas
import plotly.express as px
import pandas as pd

# 1. Create some sample data
df = pd.DataFrame({
    'Fruit': ['Apples', 'Oranges', 'Bananas', 'Grapes'],
    'Amount': [4, 1, 2, 2],
    'City': ['SF', 'SF', 'Montreal', 'Montreal']
})

# 2. Create an interactive bar chart
fig = px.bar(df, 
             x='Fruit', 
             y='Amount', 
             color='City', 
             barmode='group',
             title="Fruit Distribution by City")

# 3. This is the most important step!
#    Export the figure to a self-contained HTML file.
fig.write_html("python_graph.html")

print("Successfully generated python_graph.html!")
