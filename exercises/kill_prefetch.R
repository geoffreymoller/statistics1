#!/usr/bin/env Rscript

getwd()

library(psych)

kill_prefetch <- read.csv("/Users/gmoller/Documents/search_tabs_kill_search_prefetch.csv", header = T)

print(describe(kill_prefetch))
print(round(cor(kill_prefetch), 2))

par(mfrow = c(3,2))
hist(kill_prefetch$dev)
hist(kill_prefetch$dev.control)
hist(kill_prefetch$stage)
hist(kill_prefetch$stage.control)

