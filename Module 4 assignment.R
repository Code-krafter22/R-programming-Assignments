Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)  # 1 = bad, 0 = good
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)  # 0 = low, 1 = high
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)  # 0 = low, 1 = high

# Create a data frame
data <- data.frame(Freq, bloodp, First, Second, FinalDecision)
data

#Plotting a box plot
boxplot(data$bloodp~data$First,main = "First MD's Blood pressure Ratings", 
        xlab = "First Assessment (1 = Bad, 0 = Good)", ylab = "Blood Pressure", 
        col = c("pink", "purple"))
boxplot(data$bloodp~data$Second,main = "Seocnd MD's Blood pressure Ratings", 
        xlab = "Second Assessment (1 = Bad, 0 = Good)", ylab = "Blood Pressure", 
        col = c("red", "yellow"))
boxplot(data$bloodp~data$FinalDecision,main = "Final Blood pressure Ratings", 
        xlab = "Final (1 = Bad, 0 = Good)", ylab = "Blood Pressure", 
        col = c("blue", "green"))

#main is the title of the graph
#xlab and ylab is to label X and Y axis respectively and col is for colour of the column.

#Plotting a Histogram
hist(data$bloodp, main = "Distribution of Blood Pressure", xlab = "Blood Pressure", 
       col = "lightblue", border = "darkblue")

