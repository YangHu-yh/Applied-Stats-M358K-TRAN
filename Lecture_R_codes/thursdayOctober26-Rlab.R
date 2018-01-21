setwd("/data")
setwd("~/gitfolders/358K/codes/data/")
rm(list =ls())
abalone <- read.csv("abalone/abalone.csv", header = TRUE)
ls
head(abalone)
head(abalone)
#pairwise plot of all variables in the dataset
plot(abalone)
#age = rings + 1.5
#need to create a separate age variable
abalone$age <- abalone$rings + 1.5
#could plot again to see age vs others
plot(abalone)
#run a regression model. Make sure you do NOT include rings, otherwise you get a perfect fit! (as age = rings + 1.5)
abalone.model1 <- lm(age ~ length + diameter + height + wWeight + sWeight + vWeight + shWeight, data = abalone)
summary(abalone.model1)
abalone.model1 <- lm(age ~ length + diameter + height + wWeight + sWeight + vWeight + shWeight + sex, data = abalone)
summary(abalone.model1)
#--- interpretations of the coefficients
#(....)
#NOTES: length is highly correlated with diameter, so having them both in the model would render one not useful (ie: low p-value)
#strong correlation between wweight, sWeight, vWeight, shWeight: these look like they all have linear relationship with one another
#so in model selection, most probably can exclude all but one of them
#non-linear relationship between rings and weights: looks more like quadratic. 
#on sex: sexI is significant (ie: infants is a good predictor for age) - which is trivial
#sexM is not significant (compared to the baseline sex = female). This means sex is not a good predictor for age
#---- diagnostic plots
par(mfrow = c(2,2))
plot(abalone.model1)
#assumptions violated: constant variance and normality
#try other models?
#TIP: when you have this "fanning out" effect (ie: variance is small for small y-values, and then increases with y)
#then it is a good idea to transform y
#taking sqrt(y) is popular
#this would dampen the variance, making it more "constant"
#--- so: run model2 with sqrt(age)
abalone.model2 <- lm(sqrt(age) ~ length + diameter + height + wWeight + sWeight + vWeight + shWeight + sex, data = abalone)
summary(abalone.model2)
plot(abalone.model2)
#ok, the sqrt(age) didn't do much. 
#perhaps need to kick off some useless X variables
#try keeping only one weight
abalone.model3 <- lm(age ~ length + diameter + height + wWeight + sex, data = abalone)
summary(abalone.model3)
plot(abalone.model3)
#significantly worse R-squared
#the height seems to take over as the most significant variable
#there are two extremely tall abalones
#may want to exclude them
#--- exclude the two tallest:
which.max(abalone$height)
abalone2 <- abalone[-c(2052),]
hist(abalone2$height)
max(abalone2$height)
#take off the second tallest
whichl.max(abalone2$height)
which.max(abalone2$height)
abalone2 <- abalone2[-c(1418),]
hist(abalone2$height)
#better height distribution
#run the regression model again
abalone.model4 <- lm(age ~ length + diameter + height + wWeight + sex, data = abalone2)
summary(abalone.model4)
plot(abalone.model4)
par(mfrow = c(2,2))
plot(abalone.model4)
#still has normality problems
savehistory(file = "thursdayOctober26-Rlab.R")
