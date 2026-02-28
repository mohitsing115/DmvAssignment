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
# Create Total & Average Score
data$total_score <- data$math.score + data$reading.score + data$writing.score
data$avg_score <- data$total_score / 3
# Distribution of Average Score
hist(data$avg_score,
 col="skyblue",
 main="Distribution of Average Scores",
 xlab="Average Score")
# Gender vs Performance
boxplot(avg_score ~ gender,
 data=data,
 col=c("pink","lightblue"),
 main="Average Score by Gender",
 ylab="Average Score")
# Test Preparation Effect
boxplot(avg_score ~ test.preparation.course,
 data=data,
 col=c("orange","green"),
 main="Test Preparation vs Score",
 ylab="Average Score")
# Parental Education Effect
boxplot(avg_score ~ parental.level.of.education,
 data=data,
 col="violet",
 las=2,
 main="Parental Education vs Score",
 ylab="Average Score")
# Lunch Type Effect
boxplot(avg_score ~ lunch,
 data=data,
col=c("yellow","cyan"),
 main="Lunch Type vs Score",
 ylab="Average score ")
# STATISTICAL SUMMARY
aggregate(avg_score ~ gender, data=data, mean)
aggregate(avg_score ~ test.preparation.course, data=data, mean)
aggregate(avg_score ~ parental.level.of.education, data=data, mean)
aggregate(avg_score ~ lunch, data=data, mean)
