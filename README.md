# 📊 The Limits of Downstream Waste Management: Singapore Food Waste Analysis (2002-2023)

## 📌 Project Overview
This repository contains the R code and dataset used to analyze macro-level trends in food waste generation and recycling in Singapore over a 20-year period. 

The primary objective of this brief analysis is to evaluate the long-term efficacy of downstream waste management solutions (specifically recycling) and to highlight the necessity of shifting toward upstream, predictive supply chain interventions (Zero-Waste Predictive Modeling).

![illusion_of_recycling_chart_AI_graphic](illusion_of_recycling_chart_AI_graphics.png)


## 📈 Key Findings (The "Glass Ceiling" of Recycling)
Using `ggplot2` in R, I visualized the relationship between the total food waste generated and the national recycling rate. 
As seen in the generated visualization:
* **The Blue Bars (Total Waste):** Show a massive and continuous generation of food waste, frequently exceeding 700,000 tonnes annually in recent years.
* **The Red Line (Recycling Rate):** Reveals a critical plateau. Despite Singapore being a global benchmark for infrastructure and environmental management, their food recycling rate has stagnated below the 20% mark for two decades.

**Research Implication:** If a highly efficient system like Singapore hits a "glass ceiling" where >80% of food waste remains un-recycled, it mathematically proves that recycling alone cannot solve the food waste crisis. To truly build a Circular Economy, we must shift our focus upstream—utilizing **Predictive Analytics** to optimize retail/institutional inventory and prevent over-ordering before waste occurs.

## 🛠️ Technical Details
* **Language:** R
* **Core Libraries:** `dplyr`, `ggplot2`
* **Visualization Technique:** Dual-axis chart. A specific `scale_factor` (50) was mathematically applied to align the percentage data (Recycling Rate) with the raw tonnage data (Total Waste) on the same plotting grid without distorting the visual trend.

## 🚀 How to Run
1. Clone this repository.
2. Ensure you have the `dplyr` and `ggplot2` packages installed in your R environment.
3. Run `singapore_macro_waste_analysis.R` to reproduce the visualization.
