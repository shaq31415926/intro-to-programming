
# set working directory
# this is the location of your scripts folder

setwd("/Users/shaq/Desktop/intro-to-programming/scripts")

# read the .csv file in your data folder into R
read.csv("../data/heart_attack_data.csv", header=TRUE)

# store this as a variable
heart_attack_data <- read.csv("../data/heart_attack_data.csv", header=TRUE)
# we should see a variable called heart_attack_data in our global environment

# preview the first 6 rows of the data
head(heart_attack_data)
# what do you think this data is about?

# check the class of the dataset
class(heart_attack_data)
# a data.frame is a table or 2-d array data structure used to store values of any data type

# check the shape of the data
dim(heart_attack_data)

# check the structure of the data
str(heart_attack_data)

# generate summary statistics of the data
summary(heart_attack_data)
# what is the min and max age?

# code to select a single column for e.g. sex
heart_attack_data$sex
unique(heart_attack_data$sex)

# convert sex to a factor, and look at the summary
# factor is used to categorise the data that has a limited number of values
heart_attack_data$sex <- factor(heart_attack_data$sex)
summary(heart_attack_data)
# do you see the difference?
# question: any other columns we could convert to factor?
heart_attack_data$cp <- factor(heart_attack_data$cp)
heart_attack_data$fbs <- factor(heart_attack_data$fbs)
heart_attack_data$restecg <- factor(heart_attack_data$restecg)
heart_attack_data$exang <- factor(heart_attack_data$exang)

summary(heart_attack_data)
###### 




