getwd()
rm(list = ls())
setwd("/home/ngoc/gitfolders/358K/codes/")
library(openintro)
data(teacher)
library(OIdata)
library(teacher)
data(teacher)
head(teacher)
plot(total ~ degree, data = teacher)
#fit a linear model of total (salary) vs degree
#meaning of b0: the average salary of a teacher with BA
#meaning of b0+b1:  the average salary of a teacher with MA
#meaning of b1: (av. salary of MA) - (av. salary of BA)
#if b1 is found to be sig. diff. from 0 through the regression model
#then this means: there is as sig. diff. in average salary between the two groups.
#let's run regression.
model <- lm(total ~ degree, data = teacher)
summary(model)
#conclusion: on average, MA salary is greater than BA salary by 440
#but this diff. is not significant (at alpha = 0.05)
#the intercept, 70090, is the average salary of the BA group. 
#--- run another example.
data(hsb2)
head(hsb2)
plot(math ~ schtyp, data = hsb2)
#from the plot: private has higher median score. About the same variation. And private has less low scores.
#is this sig? And what is the quantitative difference?
#fit a linear model
math.schtyp <- lm(math ~ schtyp, data = hsb2)
summary(math.schtyp)
#alpha = 0.01 (Ngoc's default)
#52.2 is the average math score for public
#2.5 is the difference (private - public) average score. 
#so on average, private students DO have higher scores
#but this diff. is not significant (0.166 > 0.01 --> go with H0)
#---- Now:  more than one categories
#-- example: hsb2, math vs ses
plot(math ~ ses, data = hsb2)
#from the plot: upward trend. average math score increases with ses
#low < middle < high
#bottom of middle is the lowest
#rather large gap between high and low
#is this sig. diff? let's run a model
math.ses <- lm(math ~ I(ses), data = hsb2)
summary(math.ses)
#beta1: (ave. math score of middle - ave. math score of low)
#sig. test for beta1 would mean: is there a sig. diff. in the math score between middle and low
#beta2: (ave. math score of high - low)
#sig. test for beta2: is there a sig. diff in the ave. math score between high and low group.
#alpha = 0.01
#beta1 test: 0.06 > 0.01 --> NOT sig. 
#middle vs low: not sig. 
#beta2 test: 0.000113 < 0.01 --> YES. Sig. diff. between high and low. 
#intercept: 49.17 is the mean math score for ses = low
#49.17 + 3.04: is the mean math score for ses = middle
#49.17 + 7.002 : is the mean math score for ses = high.
savehistory(file = "Tuesday1017indicatorRegression.R")
