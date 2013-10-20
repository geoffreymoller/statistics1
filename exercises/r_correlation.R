#!/usr/bin/env Rscript

getwd()

library(psych)
library(gclus)
library(rgl)

fitness <- read.table("/Users/gmoller/cb/stats/exercises/Stats1.13.HW.03.txt", header = T)

#edit(fitness)

#print(names(fitness))
#print(describe(fitness))

#print(round(cor(fitness[3:10]), 2))
#print(cor(fitness$S1.pre, fitness$S2.pre))
#print(cor(fitness$V1.pre, fitness$V2.pre))

#print(cor(fitness$S1.pre, fitness$S1.post))
#print(cor(fitness$S2.pre, fitness$S2.post))
#print(cor(fitness$V1.pre, fitness$V1.post))
#print(cor(fitness$V2.pre, fitness$V2.post))

#spacial_improvement <- (fitness$S1.post - fitness$S1.pre)
#print(cor(fitness$S1.pre, spacial_improvement))
#spacial_improvement2 <- (fitness$S2.post - fitness$S2.pre)
#print(cor(fitness$S2.pre, spacial_improvement2))

#verbal_improvement <- (fitness$V1.post - fitness$V1.pre)
#print(cor(fitness$V1.pre, verbal_improvement))
#verbal_improvement2 <- (fitness$V2.post - fitness$V2.pre)
#print(cor(fitness$V2.pre, verbal_improvement2))

#aes <- subset(fitness, cond == 'aer')
#des <- subset(fitness, cond == 'des')
#aesS1 <- sum(aes$S1.post) - sum(aes$S1.pre)
#aesS2 <- sum(aes$S2.post) - sum(aes$S2.pre)
#print(aesS1 + aesS2);
#desS1 <- sum(des$S1.post) - sum(des$S1.pre)
#desS2 <- sum(des$S2.post) - sum(des$S2.pre)
#print(desS1 + desS2);

base <- fitness[3:10]
base.r <- abs(cor(base))
base.color <- dmat.color(base.r)
base.order <- order.single(base.r)
cpairs(base, base.order, panel.colors = base.color, gap = .5,
  main = "Variables Ordered and Colored by Correlation")


