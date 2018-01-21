#--------
#A demonstration of Fisher exact test with the Titanic data
#Author: Ngoc M. Tran
#Date: September 10th, 2017
#--------
#data source: https://ww2.amstat.org/publications/jse/datasets/titanic.dat.txt
#data desccription: https://ww2.amstat.org/publications/jse/datasets/titanic.txt
#more discussions: https://ww2.amstat.org/publications/jse/v3n3/datasets.dawson.html
#--------------- 
#Questions:
#a/ was there a "women and children first" policy?
#b/ was there a "first class first, third class last" policy? 

#--- set home folder, load data
setwd("~/gitfolders/358K/codes")
library(ggplot2)
library(vcd)
rm(list = ls())
data <- read.csv("data/titanic.csv", header=TRUE)


#--- fisher test: sex vs survived
tab <- table(data$survived, data$sex)
#two-sided test (default)
fisher.test(tab)
#one-sided test: male has lower survival odds
fisher.test(tab, alternative = "less") 
#highly significant. Conclude: males most likely have lower survival odds. 
#double-check that this matches the descriptive data
mosaic(survived ~ sex, data)

#one-sided test: female has lower survival odds
fisher.test(tab, alternative = "greater")
#test not significant. Conclude: males most likely do NOT have higher survival odds. 

#--- fisher test: age vs survived
tab2 <- table(data$survived, data$age)
#one-sided test: ask if adults have lower survival odds
fisher.test(tab2, alternative = "greater")
#test is highly significant (p < 1e-5). Conclude: adults do have lower survival odds  
#double-check that this matches the descriptive data
mosaic(survived ~ age, data)

#--- fisher test: class vs survived
tab2 <- table(data$survived, data$class) 
#this is not a 2x2 table, so fisher test only has two-sided alternative. 
fisher.test(tab2)
#table too large, cannot compute exactly! What to do? See next class!

