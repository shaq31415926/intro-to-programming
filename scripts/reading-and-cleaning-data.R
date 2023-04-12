
# set working directory
# this is the location of your scripts folder

setwd("/Users/shaq/Documents/bu/intro-to-programming/scripts")

# store this as a variable
heart_attack_data <- read.csv("../data/heart_attack_data.csv", header=TRUE)
# we should see a variable called heart_attack_data in our global environment

# code to convert columns to factors
# print summary of data before converting
str(heart_attack_data)

heart_attack_data$sex <- factor(heart_attack_data$sex)
heart_attack_data$cp <- factor(heart_attack_data$cp)
heart_attack_data$fbs <- factor(heart_attack_data$fbs)
heart_attack_data$restecg <- factor(heart_attack_data$restecg)
heart_attack_data$exang <- factor(heart_attack_data$exang)

# print summary of data after converting
print("--------")
str(heart_attack_data)

# store this as a .csv file in the data folder
write.csv(heart_attack_data, "../data/heart_attack_data_cleaned.csv", row.names=FALSE)

