#!/usr/bin/env Rscript

getwd()

library(psych)
library(sm)

impact <- read.table("/users/gmoller/Documents/Stats1.13.HW.02.txt", header = T)
pre <- subset(impact, time == 'pre')
post <- subset(impact, time == 'post')

print(names(impact))

wm_pre <- subset(pre, condition == 'WM')
wm_post <- subset(post, condition == 'WM')

pe_pre <- subset(pre, condition == 'PE')
pe_post <- subset(post, condition == 'PE')

ds_pre <- subset(pre, condition == 'DS')
ds_post <- subset(post, condition == 'DS')

print(mean(wm_pre$SR))
print(mean(wm_post$SR))

print(mean(pe_pre$SR))
print(mean(pe_post$SR))

print(mean(ds_pre$SR))
print(mean(ds_post$SR))

par(mfrow = c(3,2))
hist(wm_pre$SR)
hist(wm_post$SR)
hist(pe_pre$SR)
hist(pe_post$SR)
hist(ds_pre$SR)
hist(ds_post$SR)

