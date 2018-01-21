rm(list = ls())
getwd()
setwd("home/ngoc/gitfolders/358K/codes")
setwd("~/gitfolders/358K/codes/data")
#tuesday lecture: various linear regression examples
email <- read.csv("email.csv", header = TRUE)
head(email)
#variables of interest: num_char vs line_breaks
#ie: will try to predict num_char based on line_breaks
#first: check type
class(email$num_char)
class(email$line_breaks)
plot(email$num_char ~ email$line_breaks)
#from the plot: positive correlationo
#higher line_breaks --> higher num_char (makes sense)
#visually, linear model seems like a good fit
#compute a numerical measure of correlation (ie: that is the correlation)
cor(email$num_char, email$line_breaks)
#correlation 0.956. Very high. Strong positive relationship
#(but doesn't mean linear. Linear comes from the visual assessment of the scatterplot)
#fit a regression model
#Y = b0 + b1X + noise
email.model <- lm(num_char ~ line_breaks, data = email)
summary(email.model)
#summary: best line is Y = 0.583 + 0.043*X
#p-values for both tests are < 0.01. Conclude: both the intercept and the slope are sig. diff. from 0
#let's visualize the line of best fit on the scatterplot
b0 = email.model$coefficients[1]
b1 = email.model$coefficients[2]
b0
b1
abline(a = b0, b = b1, col = "red", lwd = 2)
#--- do another example
library(openintro)
data(possum)
head(possum)
?possum
#investigate: relationship between headlength and tailength
#try to predict headL from tailL
plot(possum$headL ~ possum$taiL)
plot(possum$headL ~ possum$tailL)
#somewhat positive relationship
#moderate to weak relationship
cor(possum$headL, possum$tailL)
#run a regression model
possum.model <- lm(headL ~ tailL, data = possum)
summary(possum.model)
#line of best fit: headL = 73.2 + 0.52*tailL
#both coeff are sig. diff. from 0
b0 = possum.model$coefficients[0]
b0 = possum.model$coefficients[1]
b1 = possum.model$coefficients[2]
b0
b1
abline(a = b0, b = b1, col = "blue", lwd = 2)
#do one more: hsb2
data(hsb2)
head(hsb2)
#investigate: math vs read
plot(hsb2$math ~ hsb2$read)
#positive correlation. 
#moderate
cor(hsb2$math, hsb2$read)
#run regression
hsb2.model <- lm(math ~ read, data = hsb2)
summary(hsb2.model)
#model is: math = 21.03 + 0.6*read
#both coeff. are sig. diff. from 0
abline(a = hsb2.model$coefficients[1], b = hsb2.model$coefficients[2], col = "brown", lwd = 20
)
plot(hsb2$math ~ hsb2$read)
abline(a = hsb2.model$coefficients[1], b = hsb2.model$coefficients[2], col = "brown", lwd = 2)
#that's it. See you Thursday. 
?savehistory
savehistory(file = "lectureTuesday-regression.R")
