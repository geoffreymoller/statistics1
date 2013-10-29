#!/usr/bin/env Rscript

getwd()

library(psych)
library(ggplot2)

salary <- read.table("/Users/gmoller/Documents/statistics1/exercises/Stats1.13.HW.04.txt", header = T)
set.seed(1)
salary.15 <- salary[sample(nrow(salary), 15), ] 
salary.51_70 <- salary[51:70, ]


#model1.subset <- lm(salary.51_70$salary ~ salary.51_70$years)
#model2.subset <- lm(salary.51_70$salary ~ salary.51_70$courses)
#model3.subset <- lm(salary.51_70$salary ~ salary.51_70$years + salary.51_70$courses)
#anova(model1.subset, model2.subset);
#anova(model1.subset, model3.subset);
#anova(model2.subset, model3.subset);
#summary(model1.subset)
#summary(model2.subset)
#summary(model3.subset)

#describe(salary)
#model1 <- lm(salary$salary ~ salary$years)
#model1.15 <- lm(salary.15$salary ~ salary.15$years)
#summary(model1)
#summary(model1.15)

#model2 <- lm(salary$salary ~ salary$courses)

#confint(model3)
#model3.z <- lm(scale(salary$salary) ~ scale(salary$courses) + scale(salary$years))
#confint(model3)

#anova(model1, model3)
#anova(model2, model3)

#model3 <- lm(salary$salary ~ salary$years + salary$courses)
#predicted = fitted(model3)
#predicted
#salary.51_70$salary
#cor(predicted[51:70, ], salary.51_70$salary)


#model3 <- lm(salary$salary ~ salary$years + salary$courses)
#model3.resid = resid(model3)
#predicted = fitted(model3)

#predicted
#model3.resid
#cor(predicted, model3.resid)

model3.subset <- lm(salary.51_70$salary ~ salary.51_70$years + salary.51_70$courses)
predicted = fitted(model3.subset)
predicted
salary.51_70$salary
cor(predicted, salary.51_70$salary)
#predicted
