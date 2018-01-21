library(OIdata)
data(teacher)
model <- lm(total ~ degree + years, data = teacher, subset = teacher$fte == "1")
summary(model)
par(mfrow = c(2,2))
plot(model)
#independence assumption is violated!
#R^2 is high: this means salary can be predicted well based on degree and years
#fit is bad: this means salary does NOT have a linear relationship with degree + years
#--- oh no, what should we do?
#--- try transform
#--- guide to transform: look at the residual vs fitted plot of your linear model
#AND look at the pairwise plot between salary and other variables. 
#--- first: look at the pairwise plot
par(mfrow = c(1,1))
plot(teacher)
#note: salary does NOT have a linear relationship with years
#so we may want to transform years
#some ideas: years**2, sqrt(years), log(years). 
#the OTHER way to look at transforms: look at the diagnostic plot of the linear model
par(mfrow = c(2,2))
plot(model)
#note: residual vs fitted: concave-down pattern. May want to transform Y such as Y --> Y^2 or Y --> exp(Y) etc
#--- but for this exercise, let us transform X_2 (years)
#model2: add in a third variable that is sqrt(years)
names(teacher)
model2 <- lm(total ~ degree + years + sqrt(years), data = teacher, subset = teacher$fte == "1")
summary(model2)
plot(model2)
#no. still a trend. 
#so adding sqrt(years) improve the prediction 
#but sqrt(years) is not a good fit (ie: the relationship between salary and these variables is NOT the one in this model)
#-- try: model3
#years**2
model3 <- lm(total ~ degree + years + years**2, data = teacher, subset = teacher$fte == "1")
summary(model3)
model3 <- lm(total ~ degree + years + I(years**2), data = teacher, subset = teacher$fte == "1")
summary(model3)
summary(model3)
plot(model3)
#better fit compared to the other two models
#constant variance is good
3**2
#normality has some moderate issue
#independence: basically ok
#this model is much better than the others
#a fair fit
#conclusion: salary increases with degree = MA, and increases with years, but as a quadratic with small, negative constant for the x^2 term
#ie: experienced teacher have a discount in salary increase. 
#--- briefly: on marioKart
library(openintro)
data(marioKart)
?marioKart
head(marioKart)
#if we just ran a simple regression:
#(simple = multiple linear)
mario.model <- lm(totalPr ~ startPr + shipPr + cond + nBids + duration + sellerRate, data = marioKart)
sapply(marioKart, 1)
sapply(marioKart, class)
mario.model <- lm(totalPr ~ startPr + shipPr + cond + nBids + duration + sellerRate + shipSp + stockPhoto + wheels, data = marioKart)
summary(mario.model)
#note: not all variables are significant!
#having too many variables will reduce our adjusted R-squared
#really: you don't want to include too many variables, especially non-significant ones.
#--- finally: a demonstration of automatic variable selection
library(MASS)
stepAIC(mario.model)
mario.model.step <- stepAIC(mario.model)
summary(mario.model.step)
plot(mario.model.step)
#terrible fit!
#note: always need to do more variable selection by hand. 
#stepAIC is a good start
savehistory(file = "Tuesday-1024.R")
