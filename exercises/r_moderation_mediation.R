#!/usr/bin/env Rscript

getwd()

library(psych)
library(ggplot2)
#library(multilevel)

happiness <- read.table("/Users/gmoller/cb/statistics1/exercises/Stats1.13.HW.07.txt", header = T)

#print(describe(happiness))
#print(round(cor(happiness), 2))

model1 <- lm(happiness$happy ~ happiness$extra + happiness$diverse) 
#model1 <- lm(happiness$happy ~ happiness$extra)
print(summary(model1))
print(confint(model1))

