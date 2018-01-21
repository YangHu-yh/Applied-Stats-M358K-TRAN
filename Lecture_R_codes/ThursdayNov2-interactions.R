library(openintro)
data(hsb2)
head(hsb2)
#--- regression: model 1 (no interaction term)
model1 <- lm(math ~ schtyp + ses, data = hsb2)
summary(model1)
model2 <- lm(math ~ schtyp:ses, data=hsb2)
summary(model2)
#model 1 is more interpretable
#model 2 (with interaction) has slightly better R^2 but the coefficients are mostly not sig. 
#---- now: discuss model 3. 
model3 <- lm(math ~ ses + schtyp:ses, data = hsb2)
summary(model3)
#comparison of model2 vs model3:
#both have 6 parameters
#have different coefficient interpretations
#but they are both FULL models (ie: can model the full interaction between ses and schtype)
#because they both have 6 parameters!
#check: identical R^2!
#one more may be more interpretable 
#but the overall fit (ie: the predicted values) are identical. 
par(mfrow = c(2,2))
plot(model2)
par(mfrow = c(2,4))
plot(model2)
plot(model3)
savehistory(file = "ThursdayNov2-interactions.R")
