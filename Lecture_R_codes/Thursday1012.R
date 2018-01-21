rm(list = ls())
#First: generate a bunch of examples of GOOD FITS
#simulate data
x = c(1:100)
y = -1 + 2.1*x + rnorm(100, 0, 0.1)
plot(y ~ x)
y = -1 + 2.1*x + rnorm(100, 0, 1)
plot(y ~ x)
y = -1 + 2.1*x + rnorm(100, 0, 10)
plot(y ~ x)
y = -1 + 2.1*x + rnorm(100, 0, 100)
plot(y ~ x)
y = -1 + 2.1*x + rnorm(100, 0, 1000)
plot(y ~ x)
y.0.1 = -1 + 2.1*x + rnorm(100, 0, 0.1)
model.0.1 <- lm(y.0.1 ~ x)
summary(model.0.1)
plot( y.0.1 ~ x)
par(mfrow = c(2,2))
plot(model.0.1)
y1 = -1 + 2.1*x + rnorm(100, 0, 1)
plot(y1 ~ x)
par(mfrow = c(1,1))
plot(y1 ~ x)
model.1 <- lm(y1 ~ x)
summary(model.1)
par(mfrow = c(2,2))
plot(model.1)
y.100 <- -1 + 2.1*x + rnorm(100, 0, 100)
par(mfrow = c(1,1))
plot(y.100 ~ x)
cor(y.100, x)
model.100 <- lm(y.100 ~ x)
summary(model.100)
par(mfrow = c(2,2))
plot(model.100)
#why is there tail deviations in the QQ plot?
#well: this is just reflecting the distribution of 100 samples from a normal with variance 100
#to test this: try again at home with x of length 10000
#should see better fit in the QQ plot
#---------------- END OF GOOD PLOTS
#--- see some bad plots
x = c(1:100)
y <- 2+3*x - 4*x**2 + rnorm(100, 0, 0.1)
par(mfrow = c(2,2))
par(mfrow = c(1,1))
plot( y ~ x)
#STRONG relationship. NOT linear.
#fit a regression model. What would happen?
model.quadratic <- lm(y ~ x)
summary(model.quadratic)
#add regression line to plot to visualize
abline(a = model.quadratic$coefficients[1], b = model.quadratic$coefficients[2], col = "red", lwd = 2)
#not a good fit. despite BIG R^2.
#run diagnostics. 
par(mfrow = c(2,2))
plot(model.quadratic)
#--- obvious: residual vs fitted has a pattern. SO errors are not independent
#scale-location has pattern: so not constant variance. 
#--- do another example. 
y.exp <- exp(-2*x+rgamma(100,1,1))
par(mfrow = c(1,1))
plot(y.exp ~ x)
model.exp <- lm(y.exp ~ x)
summary(model.exp)
par(mfrow = c(2,2))
summary(model.exp)
plot(model.exp)
#not a good fit. Clear trends in the three diagnostic plots. 
x = rnorm(200,0,1)
y = (1+2*x+rnorm(100,0,0.75))**2
par(mfrow = c(1,1))
plot(y ~ x)
y = (1+2*x+rnorm(100,0,0.75))**(2/3)
plot(y ~ x)
model.23 <- lm(y~x)
summary(model.23)
par(mfrow = c(2,2))
plot(model.23)
#scale-location indicates that perhaps variance is not constant. 
#quite borderline case
savehistory(file = "Thursday1012.R")
