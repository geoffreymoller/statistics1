#!/usr/bin/env Rscript

getwd()

library(psych)

salary <- read.table("/Users/gmoller/Documents/statistics1/exercises/Stats1.13.HW.04.txt", header = T)

print(describe(salary))
print(round(cor(salary), 2))

par(mfrow = c(3,2))

model1 <- lm(salary$salary ~ salary$years)
print(summary(model1))
model1.z <- lm(scale(salary$salary) ~ scale(salary$years))
print(summary(model1.z))
plot(salary$salary ~ salary$years, main = "Scatterplot", ylab = "salary", xlab = "years")
abline(model1, col="blue")

model2 <- lm(salary$salary ~ salary$courses)
print(summary(model2))
model2.z <- lm(scale(salary$salary) ~ scale(salary$courses))
print(summary(model2.z))
plot(salary$salary ~ salary$courses, main = "Scatterplot", ylab = "salary", xlab = "courses")
abline(model2, col="red")

model3 <- lm(salary$salary ~ salary$years + salary$courses)
print(summary(model3))
model3.z <- lm(scale(salary$salary) ~ scale(salary$courses) + scale(salary$years))
print(summary(model3.z))
plot(salary$salary ~ salary$courses, main = "Scatterplot", ylab = "salary", xlab = "years & courses")
predicted = fitted(model3)
print(mean(predicted))
#abline(model3, col="orange")

salary$e = resid(model3)
hist(salary$e)

#hist(salary$salary)
#hist(salary$years)
#hist(salary$courses)
#print(cor.test(salary$years, salary$salary))

