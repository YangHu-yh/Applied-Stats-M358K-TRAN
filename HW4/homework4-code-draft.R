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
#compare
plot(weights.model1)
plot(weights.model2)
weights.model3 <- lm(qualified ~ weight + relate + weight:relate, data = wei)
summary(weights.model3)
plot(weights.model3)
# other trials
plot(qualified ~ weight*relate, data = wei)
weights.modeln <- lm(qualified ~ weight + relate + weight1:relate1, data = wei)
weights.model3.1 <- lm(qualified ~ weight + relate + weight*relate, data = wei)
summary(weights.model3.1)
savehistory(file = 'Hhomework4-code-draft.R')
