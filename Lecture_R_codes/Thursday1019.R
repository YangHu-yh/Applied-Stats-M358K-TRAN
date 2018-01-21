rm(list = ls())
getwd()
library(openintro)
data(hsb2)
head(hsb2)
#regression: math vs ses
math.ses <- lm(math ~ ses, data = hsb2)
summary(math.ses)
#run diagnostics 
par(mfrow = c(2,2))
plot(math.ses)
#independence: is ok
#QQ plot: shows no drastic deviation from dotted line, so normality is ok
#scale-location: similar spread, constant variance is ok
#reasonable model. 
#(good fit)
#--- run another example
#teacher: salary vs degree
library(OIdata)
data(teacher)
head(teacher)
#regression: salary vs degree
salary.degree <- lm(total ~ degree, data = teacher)
summary(salary.degree)
plot(salary.degree)
#independence: ok
#constant variance: ok-ish
#note: may need further asssessment on 56
#normal: there are deviations in the uppertail
dim(teacher)
#not a great fit: normality assumption is not satisfied, and constant variance is questionable
#--- another
head(hsb2)
#math score vs schooltype
math.school <- lm(math ~ schtyp, data = hsb2)
summary(math.school)
ls()
plot(math.ses)
plot(salary.degree)
plot(math.school)
#independence: ok. 
#econstant variance: ok
#normality: suspicious but somewhat passable
#conclusion: moderately good fit. Maybe normality is an issue but the other assumptions are ok. 
#COMMENT: to quantify the fraction of points that deviate from this plot:
#deviation is below -1 for standardized residuals
#a/ get a list of residuals
#b/ standardize them
#c/ look for the fraction whose values are < -1. 
#--- F-test
summary(math.school)
summary(math.ses)
#NOTE: F-test does not depend on the ordering of categories (ie: which one you chose as baseline)
#NOTE: F-test would answer the question: is there a relationship between (eg: ses) and (eg: math) at all?
#useful in many applications
#NOTE: F-test is NOT the same as doing pairwise t-test. 
#--- NEXT: multiple regressiono
#-- teacher: salary vs degree + fulltime + years
head(teacher)
#should always check the class of your variables
class(teacher$total)
class(teacher$fte)
class(teacher$degree)
summary(teacher$degree)
summary(teacher$fte)
#oh oh: only have 1 part-time person
#this is bad because any group with just 1 observation will have a perfect fit, residual = 0, and NO estimation of the variance
#should never draw conclusions out of just 1 observation
#really, should just do the analysis with the part-time person excluded
#---- first: let's do the analysis with the part-time person IN anyway
model1 <- lm(total ~ years + fte + degree, data = teacher)
summary(model1)
#--- run model 2: get rid of the part-time person
teacher2 <- teacher[teacher$fte == "1",]
dim(teacher2)
model2 <- lm(total ~ years + degree, data = teacher2)
summary(model2)
par(mfrow = c(2,2))
summary(model1)
plot(model1)
plot(model2)
#independence problem! Model has good prediction power but is not a good fit! (ie: assumptions are not satisfied)
#--- more discussions on Tuesday
savehistory(file = "Thursday1019.R")
