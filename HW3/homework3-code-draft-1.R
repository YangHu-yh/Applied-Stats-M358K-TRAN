a
a = 4
rm(list = ls())
getwd()
setwd("E:/Study/M 358K/HW 3")
rm(list = ls())
getwd()
setwd("E:/Study/M 358K/HW 3")
library(openintro)
install.packages('openintro')
install.packages('openintro')
library(openintro)
data(hsb2)
head(hsb2)
plot(x = hsb2$socst, y = hsb2$math, xlab = 'social studies', ylab = 'math scores', main = 'Social studies vs Math scores')
cor(hsb2$socst, y = hsb2$math)
socmathmodel <- lm(socst ~ math, data = hsb2)
summary(socmathmodel)
b0 = socmathmodel$coefficients[0]
b0 = socmathmodel$coefficients[1]
b1 = socmathmodel$coefficients[2]
b0
b1
abline(a = b0, b = b1, col = "blue", lwd = 2)
par(mfrow = c(2,2))
plot(socmathmodel)
par(mfrow = c(1,1))
plot(x=hsb2$read, y=hsb2$math,xlab = 'Read Score', ylab='Math Score',main='Read score vs. Math score')
plot(socmathmodel)
par(mfrow = c(2,2))
plot(socmathmodel)
par(mfrow = c(1,1))
plot(x=hsb2$read, y=hsb2$math,xlab = 'Read Score', ylab='Math Score',main='Read score vs. Math score')
readmathmodel <- lm(read ~ math, data = hsb2)
b0 = readmathmodel$coefficients[0]
b0 = readmathmodel$coefficients[1]
b1 = readmathmodel$coefficients[2]
b0
b1
abline(a = b0, b = b1, col = "blue", lwd = 2)
cor(hsb2$read, hsb2$math)
summary(readmathmodel)
par(mfrow = c(2,2))
plot(readmathmodel)
rm(list = ls())
getwd()
setwd("E:/Study/M 358K/HW 3')
")"
)
")
setwd("E:/Study/M 358K/HW 3")
library(openintro)data(hsb2)
library(openintro)
data(hsb2)
head(hsb2)
dotchart(hsb2$socst~Math)
plot(x = hsb2$socst, y = hsb2$math, xlab = 'social studies', ylab = 'math scores', main = 'Social studies vs Math scores')
cor(hsb2$socst, y = hsb2$math)
socmathmodel <- lm(socst ~ math, data = hsb2)
summary(socmathmodel)
b0 = socmathmodel$coefficients[0]
b0 = socmathmodel$coefficients[1]
b1 = socmathmodel$coefficients[2]
b0
b1
abline(a = b0, b = b1, col = "blue", lwd = 2)
plot(x = hsb2$math, y = hsb2$socst, ylab = 'social studies', xlab = 'math scores', main = 'Social studies vs Math scores')
cor(y=hsb2$socst, x = hsb2$math)
socmathmodel <- lm(math~socst, data = hsb2)
summary(socmathmodel)
b0 = socmathmodel$coefficients[0]
b0 = socmathmodel$coefficients[1]
b1 = socmathmodel$coefficients[2]
b0
b1
abline(a = b0, b = b1, col = "red", lwd = 2)
socmathmodel <- lm(socst ~ math, data = hsb2)
b0 = socmathmodel$coefficients[0]
b0 = socmathmodel$coefficients[1]
b1 = socmathmodel$coefficients[2]
b0
b1
abline(a = b0, b = b1, col = "blue", lwd = 2)
# Ignore the later part, use lm(socst ~ math, hsb2)
plot(socmathmodel)
plot(socmathmodel)
par(mfrow = c(2,2))
plot(socmathmodel)
summary(socmathmodel)
head(hsb2)
plot(x=read, y=math, data = hsb2)
plot(x=hsb2$read, y=hsb2$math)
par(mfrow = c(1,1))
plot(x=hsb2$read, y=hsb2$math)
plot(x=hsb2$read, y=hsb2$math,xlab = 'Read Score', ylab='Math Score')
plot(x=hsb2$read, y=hsb2$math,xlab = 'Read Score', ylab='Math Score',main='Read score vs. Math score')
readmathmodel <- lm(read ~ math, data = hsb2)
b0 = readmathmodel$coefficients[0]
b0 = readmathmodel$coefficients[1]
b1 = readmathmodel$coefficients[2]
b0
b1
abline(a = b0, b = b1, col = "blue", lwd = 2)
cor(hsb2$read, hsb2$math)
summary(readmathmodel)
par(mfrow = c(2,2))
plot(readmathmodel)
savehistory(file = "homework3-code-draft.R")
