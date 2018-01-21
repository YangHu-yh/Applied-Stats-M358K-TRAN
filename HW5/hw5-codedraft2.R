getwd()
getwd()
setwd('~/Documents/!!!Stduy/!!!COLLEGE/2017 Fall/M 358K')
weight <- read.csv('~/Documents/!!!Stduy/!!!COLLEGE/2017 Fall/M 358K/data/weight.txt',header=True)
getwd()
setwd("~/Documents/!!!Study/!!!COLLEGE/2017 Fall/M 358K")
getwd()
weight <- read.csv("data/weight.txt", header = TRUE)
head(weight)
weight <- read.table("data/weight.txt", header = TRUE)
head(weight)
ggplot(weight, aes(x=qualified, fill=weight))
library(ggplot2)
installed.packages('ggplot2')
library(ggplot2)
installed.packages('ggplot2')
download.packages('ggplot2')
install.packages('ggplot2')
install.packages('vcd')
install.packages('coin')
install.packages('openintro')
install.packages('OIdata')
install.packages('teacher')
install.packages('devtools')
library(teacher)
ggplot(weight, aes(x=qualified, fill=weight))
library(ggplot2)
ggplot(weight, aes(x=qualified, fill=weight))
ggplot(weight, aes(x=qualified, fill=weight))+geom_histogram()
ggplot(weight, aes(x=qualified, fill=weight))+geom_histogram(binwidth = 1)
ggplot(weight, aes(x=qualified, fill=weight))+geom_histogram(binwidth = 2)
ggplot(weight, aes(x=qualified, fill=weight))+geom_histogram()
ggplot(weight, aes(x=qualified, y=weight))+geom_boxplot()
ggplot(weight, aes(y=qualified, x=weight))+geom_boxplot()
head(weight)
table(weight$weight,weight$qualified)
ggplot(weight, aes(x=qualified, fill=weight))+geom_bar()
mosaic(weight ~ qualified, data = weight)
library(vcd)
mosaic(weight ~ qualified, data = weight)
ggplot(weight, aes(x = weight, y=qualified)) + geom_violin()
sapply(weight,class)
convert <- function(obj,types){
for (i in 1:length(obj)){
FUN <- switch(types[i],character = as.character,
numeric = as.numeric,
factor = as.factor, date = as.Date, time = time)
obj[,i] <- FUN(obj[,i])
}
obj
}
#set the target types of the various columns
numcol = dim(weight)[2]
type.target = rep("factor", numcol)
type.target[c(1:numcol)[names(data) == "qualified"]] <- "numeric"
sapply(weight, class)
numcol
type.target[c(1:numcol)[names(weight) == "weight"]] <- "factor"
sapply(weight, class)
wei <- read.table("data/weight.txt", header = TRUE)
numcol = dim(wei)[2]
type.target = rep("factor", numcol)
type.target[c(1:numcol)[names(wei) == "cc"]] <- "numeric"
sapply(wei,class)
cbind(names(data), type.target)
cbind(names(wei), type.target)
numcol = dim(wei)[2]
type.target = rep("factor", numcol)
type.target[c(1:numcol)[names(wei) == "weight"]] <- "numeric"
cbind(names(wei), type.target)
numcol = dim(wei)[2]
type.target = rep("factor", numcol)
type.target[c(1:numcol)[names(wei) == "qualified"]] <- "numeric"
cbind(names(wei), type.target)
wei <- convert(wei, type.target)
sapply(wei)
convert <- function(obj,types){
for (i in 1:length(obj)){
FUN <- switch(types[i],character = as.character,
numeric = as.numeric,
factor = as.factor, date = as.Date, time = time)
obj[,i] <- FUN(obj[,i])
}
obj
}
sapply(wei)
wei <- convert(wei, type.target)
sapply(wei)
convert <- function(obj,types){
for (i in 1:length(obj)){
FUN <- switch(types[i],character = as.character,
numeric = as.numeric,
factor = as.factor, date = as.Date, time = time)
obj[,i] <- FUN(obj[,i])
}
obj
}
#set the target types of the various columns
numcol = dim(wei)[2]
type.target = rep("factor", numcol)
type.target[c(1:numcol)[names(wei) == "qualified"]] <- "numeric"
#check: names and target types
cbind(names(wei), type.target)
#convert
wei <- convert(wei, type.target)
#check the names vs actual types
sapply(wei, class)
ggplot(wei,aes(x=weight, y = qualified))+geom_boxplot()
ggplot(wei,aes(x=weight, y = qualified))+geom_violin()
ggplot(wei,aes(x=weight, y = qualified),main='Qualified vs Weight Plot')+geom_violin()
ggplot(wei,aes(x=weight, y = qualified,main='Qualified vs Weight Plot'))+geom_violin()
# Qualified vs weight finished
# Befin qualified vs related
# Begin
ggplot(wei,aes(x=related, y = qualified)+geom_violin()
)
ggplot(wei,aes(x=related, y = qualified))+geom_violin()
ggplot(wei,aes(x=relate, y = qualified))+geom_violin()
# now start qualified vs weight:relate
plot(qualified ~ weight:relate, data=wei)
plot(qualified ~ weight:relate, data=wei)+geom_violin()
weights.model1 <- lm(qualified ~ weight  + relate, data = wei)
summary(weights.model1)
par(mfrow = c(2,2))
plot(weights.model1)
weights.model2 <- lm(qualified ~ weight:relate, data = wei)
summary(weights.model2)
plot(weights.model2)
plot(weights.model1)
plot(weights.model2)
weights.model3 <- lm(qualified ~ weight + relate + weight:relate, data = wei)
summary(weights.model3)
plot(weights.model3)
plot(qualified ~ weight*relate, data = wei)
weights.modeln <- lm(qualified ~ weight + relate + weight1:relate1, data = wei)
weights.model3.1 <- lm(qualified ~ weight + relate + weight*relate, data = wei)
summary(weights.model3.1)
savehistory(file = 'Hhomework4-code-draft.R')
# Homework4 final code
# M 358K class homework
# Student: Yang Hu
# UT EID: yh8473
# ------------------------
# Clean the history and environment
rm(list = ls())
# Set directory
getwd()
setwd("~/Documents/!!!Study/!!!COLLEGE/2017 Fall/M 358K")
getwd()
# Import libraries
library(ggplot2)
library(vcd)
# Input data from weight.txt
wei <- convert(wei, type.target)
sapply(wei)
# Convert the type of the variable
# ('factor' for weight and relate, and 'numeric' for qualified)
convert <- function(obj,types){
for (i in 1:length(obj)){
FUN <- switch(types[i],character = as.character,
numeric = as.numeric,
factor = as.factor, date = as.Date, time = time)
obj[,i] <- FUN(obj[,i])
}
obj
}
#set the target types of the various columns
numcol = dim(wei)[2]
type.target = rep("factor", numcol)
type.target[c(1:numcol)[names(wei) == "qualified"]] <- "numeric"
#check: names and target types
cbind(names(wei), type.target)
#convert
wei <- convert(wei, type.target)
#check the names vs actual types
sapply(wei, class)
# Q1
# Plot qualified vs weight
ggplot(wei,aes(x=weight, y = qualified))+geom_violin()
# Plot qualified vs related
ggplot(wei,aes(x=relate, y = qualified))+geom_violin()
# now start qualified vs weight:relate
plot(qualified ~ weight:relate, data=wei)
# Q2
# Regression model 1 for qualified vs weight and relate
weights.model1 <- lm(qualified ~ weight  + relate, data = wei)
summary(weights.model1)
par(mfrow = c(2,2))
# Diagnostic graph for model 1
plot(weights.model1)
# Q5
# Regression model 2 for qualified vs weight:relate
weights.model2 <- lm(qualified ~ weight:relate, data = wei)
summary(weights.model2)
# Diagnostic graph for model 2
plot(weights.model2)
# Q8
# Regression model 3 includes an interaction term between weight and relate
weights.model3 <- lm(qualified ~ weight + relate + weight:relate, data = wei)
summary(weights.model3)
# model 3 diagnostic graph
plot(weights.model3)
# Homework4 final code
# M 358K class homework
# Student: Yang Hu
# UT EID: yh8473
# ------------------------
# Clean the history and environment
rm(list = ls())
# Set directory
getwd()
setwd("~/Documents/!!!Study/!!!COLLEGE/2017 Fall/M 358K")
getwd()
# Import libraries
library(ggplot2)
library(vcd)
# Input data from weight.txt
wei <- read.table("data/weight.txt", header = TRUE)
# Convert the type of the variable
# ('factor' for weight and relate, and 'numeric' for qualified)
convert <- function(obj,types){
for (i in 1:length(obj)){
FUN <- switch(types[i],character = as.character,
numeric = as.numeric,
factor = as.factor, date = as.Date, time = time)
obj[,i] <- FUN(obj[,i])
}
obj
}
#set the target types of the various columns
numcol = dim(wei)[2]
type.target = rep("factor", numcol)
type.target[c(1:numcol)[names(wei) == "qualified"]] <- "numeric"
#check: names and target types
cbind(names(wei), type.target)
#convert
wei <- convert(wei, type.target)
#check the names vs actual types
sapply(wei, class)
# Q1
# Plot qualified vs weight
ggplot(wei,aes(x=weight, y = qualified))+geom_violin()
# Plot qualified vs related
ggplot(wei,aes(x=relate, y = qualified))+geom_violin()
# now start qualified vs weight:relate
plot(qualified ~ weight:relate, data=wei)
# Q2
# Regression model 1 for qualified vs weight and relate
weights.model1 <- lm(qualified ~ weight  + relate, data = wei)
summary(weights.model1)
par(mfrow = c(2,2))
# Diagnostic graph for model 1
plot(weights.model1)
# Q5
# Regression model 2 for qualified vs weight:relate
weights.model2 <- lm(qualified ~ weight:relate, data = wei)
summary(weights.model2)
# Diagnostic graph for model 2
plot(weights.model2)
# Q8
# Regression model 3 includes an interaction term between weight and relate
weights.model3 <- lm(qualified ~ weight + relate + weight:relate, data = wei)
summary(weights.model3)
# model 3 diagnostic graph
plot(weights.model3)
library(openintro)
?openintro
data("mammals")
data(mammals)
?mammals
# use code in hw5 explanation for building mammal2 dataset
mammals2 <- mammals[rowSums(is.na(mammals)) == 0,]
see if loaded correct datasets
head(mammals)
head(mammals2)
# less obs. in mammals2, successfully exclude all NA rows
# check for variable types before plotting
sapply(mammals2, class)
# all variables are nicely fall in each type
# all variable names are self-explanable, no need for renaming, just need to pay attention to the units in comprehension.
plot(mammals2)
savehistory('hw5codedraft')
savehistory('hw5codedraft.R')
pairs(case1201[, -1], gap = 0, pch = ".")
pairs(mammals2[, -1], gap = 0, pch = ".")
head(mammals2,10)
head(mammals2,150)
?mammals
head(mammals,150)
plotmatrix(mammals2[1:4])
library(ggplot2)
plotmatrix(mammals2[1:4])
library(ggplot2)
plotmatrix(mammals2[1:4])
plotmatrix(mammals2[,1:4])
library(plotmatrix)
install.packages('ggplot2')
install.packages("ggplot2")
library(ggplot2)
plotmatrix(mammals2[,1:4])
ggpairs(mammals2)
install.packages('GGally')
library(GGally)
ggpairs(mammals2)
ggpairs(mammals2,cardinality_threshold = 63)
model1 <- lm(TotalSleep ~ BodyWt + BrainWt + LifeSpan + Gestation + Predation + Exposure + Danger,data = mammals2)
summary(model1)
model1.1 <- lm(TotalSleep ~ Gestation + Predation + Danger,data = mammals2)
summary(model1.1)
plot(model1)
plot(model1.1)
sapply(mammals2, class)
mammals2.1 <- mammals2
convert <- function(obj,types){
for (i in 1:length(obj)){
FUN <- switch(types[i],character = as.character,
numeric = as.numeric,
factor = as.factor, date = as.Date, time = time)
obj[,i] <- FUN(obj[,i])
}
obj
}
numcol = dim(data)[2]
type.target = rep("numeric", numcol)
type.target[c(1:numcol)[names(data) == "Species"]] <- "factor"
type.target[c(1:numcol)[names(data) == "Predation"]] <- "factor"
type.target[c(1:numcol)[names(data) == "Exposure"]] <- "factor"
type.target[c(1:numcol)[names(data) == "Danger"]] <- "factor"
numcol = dim(mammals2.1)[2]
type.target = rep("numeric", numcol)
type.target[c(1:numcol)[names(data) == "Species"]] <- "factor"
type.target[c(1:numcol)[names(data) == "Predation"]] <- "factor"
type.target[c(1:numcol)[names(data) == "Exposure"]] <- "factor"
type.target[c(1:numcol)[names(data) == "Danger"]] <- "factor"
cbind(names(mammals2.1), type.target)
mammals2.1 <- convert(mammals2.1, type.target)
sapply(mammals2.1,class)
numcol = dim(mammals2.1)[2]
type.target = rep("numeric", numcol)
type.target[c(1:numcol)[names(mammals2.1) == "Species"]] <- "factor"
type.target[c(1:numcol)[names(mammals2.1) == "Predation"]] <- "factor"
type.target[c(1:numcol)[names(mammals2.1) == "Exposure"]] <- "factor"
type.target[c(1:numcol)[names(mammals2.1) == "Danger"]] <- "factor"
cbind(names(mammals2.1), type.target)
mammals2.1 <- convert(mammals2.1, type.target)
sapply(mammals2.1,class)
model1.2 <- lm(TotalSleep ~ BodyWt + BrainWt + LifeSpan + Gestation + Predation + Exposure + Danger,data = mammals2.1)
summary(model1.2)
par(mfrow(2,2))
par(mfrow = c(2,2))
plot(model1.3)
plot(model1.2)
plot(model1)
plot(model1.1)
install.packages('MASS')
library(MAA)
library(MASS)
step <- stepAIC (model1.AIC, direction="both")
model1.AIC<- lm( TotalSleep ~ BodyWt + BrainWt + LifeSpan + Gestation + Predation + Exposure + Danger,data = mammals2 )
step <- stepAIC (model1.AIC, direction="both")
savehistory('hw5-codedraft2')
savehistory('hw5-codedraft2.R')
