library(dplyr)
library(ggplot2)

# Load dataset
sg_waste <- read.csv("singapore_food_waste.csv")

# Define scaling factor for the dual y-axis (aligning percentages with raw tonnage)
scale_factor <- 50 

# Generate visualization
ggplot(sg_waste, aes(x = Year)) +
  # Bar chart for Total Waste
  geom_col(aes(y = Total_Waste), fill = "steelblue", alpha = 0.7) +
  
  # Line chart for Recycling Rate
  geom_line(aes(y = Recycling_Rate * scale_factor), color = "darkred", linewidth = 1.2) +
  geom_point(aes(y = Recycling_Rate * scale_factor), color = "darkred", size = 2.5) +
  
  # Configure dual axes
  scale_y_continuous(
    name = "Total Food Waste (Tonnes)", 
    sec.axis = sec_axis(~ . / scale_factor, name = "Recycling Rate (%)")
  ) +
  
  # Labels & Titles
  labs(
    title = "The Illusion of Recycling: 20 Years of Singapore's Food Waste (2002-2023)",
    subtitle = "Total waste keeps piling up (Bars), while recycling rates (Red Line) stagnate below 20%.",
    x = "Year"
  ) +
  
  # Clean aesthetics
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    plot.subtitle = element_text(color = "gray30", size = 11),
    panel.grid.minor = element_blank() # Remove minor gridlines for a cleaner look
  )