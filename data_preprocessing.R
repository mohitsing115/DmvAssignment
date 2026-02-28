# Load dataset
data <- read.csv("C:/Users/anush/Downloads/StudentsPerformance.csv")
# View structure
str(data)
summary(data)
# Convert categorical variables to factor
data$gender <- as.factor(data$gender)
data$race.ethnicity <- as.factor(data$race.ethnicity)
data$parental.level.of.education <- as.factor(data$parental.level.of.education)
data$lunch <- as.factor(data$lunch)
data$test.preparation.course <- as.factor(data$test.preparation.course)