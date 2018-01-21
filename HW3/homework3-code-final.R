# Clear history
rm(list = ls())
# Go to the right directory
getwd()
setwd("E:/Study/M 358K/HW 3")
# Open the package of hsb2 from openintro
install.packages('openintro')
library(openintro)
data(hsb2)
# Make sure it is the correct one
head(hsb2)
# Plot the scatter plot with proper label and titles
plot(x = hsb2$socst, y = hsb2$math, xlab = 'social studies', ylab = 'math scores', main = 'Social studies vs Math scores')
# Calculate correlation coefficient
cor(hsb2$socst, y = hsb2$math)
# Make regression model
socmathmodel <- lm(socst ~ math, data = hsb2)
# See details of it
summary(socmathmodel)
# To plot the fitted line
b0 = socmathmodel$coefficients[0]
b0 = socmathmodel$coefficients[1]
b1 = socmathmodel$coefficients[2]
b0
b1
abline(a = b0, b = b1, col = "blue", lwd = 2)
# To plot the diagnotics
par(mfrow = c(2,2))
plot(socmathmodel)



# For the bonus points, firstly plot scatter points plot
par(mfrow = c(1,1))
plot(x=hsb2$read, y=hsb2$math,xlab = 'Read Score', ylab='Math Score',main='Read score vs. Math score')
# Produce regression model
readmathmodel <- lm(read ~ math, data = hsb2)
# To plot the fitted line on graph by result in summary
b0 = readmathmodel$coefficients[0]
b0 = readmathmodel$coefficients[1]
b1 = readmathmodel$coefficients[2]
b0
b1
abline(a = b0, b = b1, col = "blue", lwd = 2)
# Calculate the correlation value
cor(hsb2$read, hsb2$math)
# See details for p-values and r-squared value
summary(readmathmodel)
# Plot the diagnostics
par(mfrow = c(2,2))
plot(readmathmodel)
# finished!
