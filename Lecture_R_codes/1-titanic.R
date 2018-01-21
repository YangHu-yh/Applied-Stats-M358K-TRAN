#--------
#Titanic data analysis
#Author: Ngoc M. Tran
#Date: August 25th, 2017
#--------
#data source: https://ww2.amstat.org/publications/jse/datasets/titanic.dat.txt
#data desccription: https://ww2.amstat.org/publications/jse/datasets/titanic.txt
#more discussions: https://ww2.amstat.org/publications/jse/v3n3/datasets.dawson.html
#--------------- 
#Questions:
#a/ was there a "women and children first" policy?
#b/ was there a "first class first, third class last" policy? Passengers first or crew first?

#--- set home folder, load data
setwd("~/gitfolders/358K/codes")
library(ggplot2)
library(vcd)
rm(list = ls())
data <- read.csv("data/titanic.csv", header=TRUE)

#---- class vs survival rate
## Data summary
#view first and last few lines
head(data)
tail(data)
#summarize
summary(data)
#table
table(data$survived, data$class)
#flat summary
ftable(data)

## Data visualization
#barplot class
ggplot(data, aes(x=class)) + geom_bar()
#barplot class vs survived, stacked
ggplot(data, aes(x=class,fill=survived)) + geom_bar()
#barplot class vs survived, side by side
ggplot(data, aes(x=class,fill=survived)) + geom_bar(position="dodge")
#mosaic plot class vs survived
mosaic(survived ~ class, data = data)
#change colors
mosaic(survived ~ class, data = data,highlighting_fill= c("lightpink1","seagreen4"))

#----- class, sex, age vs survival rate
#barplot, split by sex
ggplot(data, aes(x=class,fill=survived)) + geom_bar(position="dodge") + facet_grid(sex ~ .)
#barplot, split by sex and age
ggplot(data, aes(x=class,fill=survived)) + geom_bar(position="dodge") + facet_grid(sex ~ age)
#mosaic plots
mosaic(survived ~ class + age, data = data)
mosaic(survived ~ class + sex, data = data)
mosaic(survived ~ class + age + sex, data = data)

#It seems that children and women do tend to fare better than men. 
#Is this enough to change the conclusion on class?

#---- 
#mosaic plot: survived by class, male only
mosaic(survived ~ class, data = data, subset = sex == "male", main = "males only")
#mosaic plot: survived by class, male adults only
mosaic(survived ~ class, data = data, subset = sex == "male" & age == "adult", main = "adult males only")
#compared to the previous mosaic side by side.
dev.new() #makes a new plotting window
mosaic(survived ~ class, data = data, main = "full")
#how about male adults only
mosaic(survived ~ class, data = data, main = "full")
dev.new()
select <- data$sex == "male" & data$age == "adult"
mosaic(survived ~ class, data = data[select,], main = "males adults only")
#second class adults males seems even worse! 


