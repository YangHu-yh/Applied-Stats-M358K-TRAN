# Input the data set
library(openintro)
data(mammals)
# Make sure it is the correct one with expecting  variables
head(mammals)
# use code in hw5 explanation for building mammal2 dataset by eliminating all rows with NA
mammals2 <- mammals[rowSums(is.na(mammals)) == 0,]
# see if all NA rows are excluded
head(mammals2)
# less obs. in mammals2, successfully exclude all NA rows
# check for variables' types before plotting
sapply(mammals2, class)
# all variables are nicely fall in each type
# all variable names are self-explanable, no need for renaming, just need to pay attention to the units in comprehension.
plot(mammals2)

# Show bad fit if include NonDreaming and Dreaming
modelbad0 <- lm(TotalSleep ~ NonDreaming + Dreaming, data = mammals2)
summary(modelbad0)
modelbad1 <- lm(TotalSleep ~ NonDreaming + Dreaming + LifeSpan, data = mammals2)
summary(modelbad1)


# Build model one with suggested variables
model1 <- lm(TotalSleep ~ BodyWt + BrainWt + LifeSpan + Gestation + Predation + Exposure + Danger,data = mammals2)
summary(model1)
# Plot Diagnostic graphs
par(mfrow = c(2,2))
plot(model1)

# To build model2, we need to convert Predation, Exposure and Danger to 'factor'
# Get ready to convert the type of the last three variables to be 'factor' - categorical
# Call new converted dataset mammals2.1
mammals2.1 <- mammals2
# Set convert function
convert <- function(obj,types){
for (i in 1:length(obj)){
FUN <- switch(types[i],character = as.character,
numeric = as.numeric,
factor = as.factor, date = as.Date, time = time)
obj[,i] <- FUN(obj[,i])
}
obj
}
# Set type of variable
numcol = dim(mammals2.1)[2]
type.target = rep("numeric", numcol)
type.target[c(1:numcol)[names(mammals2.1) == "Species"]] <- "factor"
type.target[c(1:numcol)[names(mammals2.1) == "Predation"]] <- "factor"
type.target[c(1:numcol)[names(mammals2.1) == "Exposure"]] <- "factor"
type.target[c(1:numcol)[names(mammals2.1) == "Danger"]] <- "factor"
cbind(names(mammals2.1), type.target)
mammals2.1 <- convert(mammals2.1, type.target)
# Check results of converting
sapply(mammals2.1,class)
# Finished converting the type
# see model 2 for regression
model2 <- lm(TotalSleep ~ BodyWt + BrainWt + LifeSpan + Gestation + Predation + Exposure + Danger,data = mammals2.1)
summary(model2)
# Plot Diagnostic graphs
plot(model2)

# Do variable selection with the stepAIC command
library(MASS)
model1.AIC <- stepAIC(model1)
model2.AIC <- stepAIC(model2)
# See result of selection
summary(model1.AIC)
summary(model2.AIC)

# Build model for bonus part
modelbonus <- lm(TotalSleep ~ I(BodyWt^-0.2) + I(BrainWt^-5) + I(log(LifeSpan)) + I(Gestation) + Predation + Danger, data = mammals2.1)
summary(modelbonus)
plot(modelbonus)
