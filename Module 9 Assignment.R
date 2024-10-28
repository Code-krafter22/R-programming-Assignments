# Assignment9
# Create 3 visualizations of the data
# Data is Prostate Survival

# First step is to install the packages and load it
install.packages("lattice")
install.packages("ggplot2")
library(lattice)
library(ggplot2)

#read the data file
data<-read.csv("prostateSurvival.csv")

# Plot 1 using ggplot2
# Age Group and Survival Time box plot with ggplot2
ggplot_plot1 <- ggplot(data, aes(x = ageGroup, y = survTime, fill = stage)) + 
  geom_boxplot() + 
  theme_minimal() + 
  labs(title = "Survival time distribution by age group", 
       x = "Age group", 
       y = "Survival Time (months)", 
       fill = "Stage") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Display the plot
print(ggplot_plot1)

# Plot 2 using lattice 
# Survival Time by grade and stage
lattice_plot <- bwplot(survTime ~ grade | stage,
                      data,
                      main = "Survival Time by Grade and Stage",
                      xlab = "Grade",
                      ylab = "Survival Time (months)"
)
# Display the plot
print(lattice_plot)

# Plot 3 using ggplot2
# Create the density plot
lattice_plot2 <- densityplot(
  ~ survTime | stage,                          
  data = data,                        
  main = "Survival Time Distribution by Stage", 
  xlab = "Survival Time (months)",             
  ylab = "Density",                            
  plot.points = FALSE,                         
  panel = function(...) {                     
    panel.densityplot(...)                   
    panel.abline(                           
      v = mean(data$survTime),  
      lty = 2,                            
      col = "gray50"                      
    )
  }
)
# Display the plot
print(lattice_plot2)