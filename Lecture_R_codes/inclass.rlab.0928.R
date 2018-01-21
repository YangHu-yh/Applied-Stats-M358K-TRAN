rm(list = ls())
library(vcd)
library(ggplot2)
setwd("/home/ngoc/gitfolders/358K/codes/data")
dream <- read.csv("dream.csv", header = TRUE)
head(dream)
#check variable types
class(dream$ideology)
class(dream$stance)
summary(dream)
#visualize: ideology and stance?
mosaic(stance ~ ideology, data = dream)
mosaic(ideology ~ stance, data = dream)
mosaic(stance ~ ideology, data = dream)
mosaic(ideology ~ stance, data = dream)
mosaic(stance ~ ideology, data = dream)
mosaic(ideology ~ stance, data = dream)
summary(data$ideology)
summary(dream$ideology)
mosaic(stance ~ ideology, data = dream)
#-- thoughts: for support rate, liberals > moderate = conservative. 
#for against rate, liberal < conservative < moderate
#--- hypothesis test.
#test for: relationship between stance and ideology?
#H0: no association between stance and ideology
#HA: there is an associationo
#HA: there is an association
#alpha: 0.05
#test: cat. vs cat. 
#options: Fisher, chi-square and permutation test
#chi-square (easier)
dream.table <- table(dream$stance, dream$ideology)
dream.table
chisq.test(dream.table)
#p-value < 0.05
#conclude: reject H0
#that means: there is an association between ideology and stance. 
#--------- Problem 2: the American dream
#class proportion from poll
#--------- Problem 2: the American dream
#class proportion from poll
n = 38
phat = 28/n
#national p
p0 = 0.77
phat
#goal: is our class proportion of "yes" to the American dream sig. different from the national proportion?
#H0: not sig.
#HA: it is. (two-sided)
#test: z-test for proportiono
#test: z-test for proportion
#alpha = 0.01
#z-test, twosided
z = (phat - p0)/sqrt(p0*(1-p0)/n)
#compute p-value
pnorm(z) + (1-pnorm(-z))
#p-value > alpha = 0.01. 
#conclude: do not reject H0. Class proportion is NOT sig. diff from national proportion. 
#we are just as optimistic on the American dream as the nation
rm(list = ls())
library(openintro)
?openintro
data(heartTr)
head(heartTr)
?heartTr
names(heartTr)
#good variables: survived, survtime, transplant
#analysis of survived vs transplant
class(heartTr$survived)
class(heartTr$transplant)
#plot?
mosaic(survived ~ transplant, data = heartTr)
#observation: treatment > control in survival rate
table(heartTr$survived, heartTr$treatment)
table(heartTr$survived, heartTr$transplant)
#survival rate of treatment: 24/(24+45)
#survival rate of treatment: 24/(24+45)
#survival rate of treatment:
24/(24+45)
#survival rate of control:
4/34
#is this significant?
#have to test because our intuition on what is "random" is NOT GOOD
#sample size here is fairly small
#test: does treatment have BETTER survival rate than control?
#H0: the treatment group does NOT have stat. sig. better survival rate than the control
#HA: treatment > better
#one-sided. 
#test?
#fisher exact test for 2x2 table
heart.table <- table(heartTr$survived, heartTr$transplant)
fisher.test(heart.table, alternative = "less")
#honestly: I type alpha = 0.01 before I did this test.
savehistory(file = "inclass.rlab.0928.R")
