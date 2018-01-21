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
