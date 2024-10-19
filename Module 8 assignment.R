#Module 8 Assignment
#Step1: Import dataset into R and then run the commend 'mean' using sex as category from pryr package.

#This is to read the data file and it is important note that the data file and R file need to be in the same directory. Also separated the data by comma ",".
Student_assginment6_new<-read.table("Assignment 6 Dataset.txt", header=TRUE, sep=",")
print(Student_assignment6_new)

# Now we will install the packages
install.packages("pryr")
require(pryr)
require(ISLR)  #install ISLR package if it shows error that "there is no package called ISLR"
install.packages("plyr")
library(plyr)
library(data.table)

#Calculate mean grade by sex

StudentAverage = ddply(Student_assginment6_new,"Sex",transform,Grade.Average=mean(Grade))
print(StudentAverage)

#Step2: Convert the data set to a dataframe for names whos' name contains the letter "i", then create a new data set with those names, Write those names to a file separated by comma’s (CSV)

#write result to a file

write.table(StudentAverage,"Student_Gendered_Mean.txt")

#Filtering "i" containing data names (case-insensitive) and creating a new file

i_studnets<- subset(Student_assignment6, grepl("i", Student_assignment6$Name, igonre.case=TRUE))
print(i_studnets)
#writing the filtered names in the CSV file.

write.csv(i_students$Name,"i_students_names.csv", row.names=FALSE)

# Step3: Write the filtered data set to a CSV file.

write.csv(i_students, file.choose(), row.names=FALSE)