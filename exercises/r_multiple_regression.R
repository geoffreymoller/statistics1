#!/usr/bin/env Rscript

getwd()

library(psych)

salary <- read.table("/Users/gmoller/cb/statistics1/exercises/Stats1.13.HW.06.txt", header = T)

#edit(salary)
#print(describe(salary))
#print(cor(salary[1:4]))

#model1 <- lm(salary$salary ~ salary$years)
#print(summary(model1))
#print(confint(model1))

model1 <- lm(salary$salary ~ salary$years + salary$courses)
#print(summary(model1))
#print(confint(model1))

profession <- C(salary$profession, treatment)

model2 <- lm(salary$salary ~ salary$years + (profession))
#print(summary(model2))
#print(confint(model2))

model3 <- lm(salary$salary ~ salary$courses + (profession))
#print(summary(model3))
#print(confint(model2))

model4 <- lm(salary$salary ~ salary$years + salary$courses + (profession))
#model2 <- lm(salary$salary ~ salary$years + salary$courses + (profession))
#print(summary(model2))
#print(confint(model2))

#tapply(salary$salary, salary$profession, mean)

print(anova(model1, model2))
print(anova(model1, model3))
print(anova(model1, model4))


