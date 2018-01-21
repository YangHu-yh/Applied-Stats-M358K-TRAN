setwd("~/gitfolders/358K/codes")
library(ggplot2)
library(vcd)
rm(list = ls())
data <- read.csv("data/titanic.csv", header=TRUE)
#first, let's do a permutation test for the lady testing tea experiment
#lady tasting tea data
ladytea <- as.data.frame(cbind(c(1,1,1,1,0,0,0,0), c(1,1,1,1,0,0,0,0)))
names(ladytea) <- c("guessed", "truth")
ladytea
fisher.test(table(ladytea))
#let's do a permutation test
#randomly assign the cup's true labels
sam <- sample(ladytea$truth, length(ladytea$truth), FALSE)
sam
sum(ladytea$guess[sam==1])
sum(ladytea$truth[sam==1])
#write a small function to replicate this 2000 times.
teashuffle <- function(){
  sam <- sample(ladytea$truth, length(ladytea$truth), FALSE)
  return(sum(ladytea$guess[sam==1]))
}
Sdists <- replicate(5000, teashuffle())
hist(Sdists, col = "lightblue")
#need to count the number of correct 0's as well
ladytea$guess[sam==0]
sum(ladytea$guess[sam==0]==0)
teashuffle <- function(){
  sam <- sample(ladytea$truth, length(ladytea$truth), FALSE)
  return(sum(ladytea$guess[sam==1]) + sum(ladytea$guess[sam==0]==0))
}
teashuffle()
teashuffle()
teashuffle()
teashuffle()
teashuffle()
teashuffle()
teashuffle()
teashuffle()
teashuffle()
teashuffle()
teashuffle()
Sdist <- replicate(2000, teashuffle())
hist(Sdist, col = "lightblue")
abline(v = sum(ladytea$guess[ladytea$truth==1])*2, col = "red", lwd = 2)
sum(Sdist >= 8)/length(Sdist)
#this last line is the p-value of our permutation test. 
Sdist <- replicate(5000, teashuffle())
hist(Sdist, col = "lightblue")
abline(v = sum(ladytea$guess[ladytea$truth==1])*2, col = "red", lwd = 2)
sum(Sdist >= 8)/length(Sdist)
#this is the p-value from a permutation test with 5000 replications
#exact p-value from Fisher test, one-sided
fisher.test(table(ladytea), alternative = "greater")$p.value
Sdist <- replicate(10000, teashuffle())
sum(Sdist >= 8)/length(Sdist)
#----- Exact test vs permutation test 2
#instead of assuming that the lady knows there are 4 cups of each type, 
#suppose that the lady guess randomly for EACH cup. 
teashuffle2 <- function(){
  randomguess <- replicate(length(ladytea$truth), rbinom(1,1,0.5))
  return(sum(randomguess[ladytea$truth == 1]) + 4-sum(randomguess[ladytea$truth == 0]))
}
Sdist2 <- replicate(5000, teashuffle2())
hist(Sdist2, col = "lightblue")
#mark our test statistics on the histogram
abline(v = sum(ladytea$guess[ladytea$truth==1]) + 4-sum(ladytea$guess[ladytea$truth == 0]), col = "red", lwd = 2)
#compute the p-value from the permutation test
sum(Sdist2 >= 8)/length(Sdist2)
#this is the simulated p-value. 
#the exact p-value?
1/2**8
#this shows that for permutation test, really should simulate ALOT
#5000 gives you precision up to the 3 decimal
#instead of writing a simulation everytime, you can use a package
#the +: it is optimized (ie: runs faster)
#the -: you do NOT have control over the test statistic nor how it is simulated
library(coin)
independence_test(guessed ~ truth, data = ladytea, alternative = "greater")
#use of the coin library is not preferred in this class
#but in practice (ie: real data for your job), then coin is good.
#---- permutation test on Titanic data: class vs survived
tab2 <- table(data$survived, data$class)
tab2
fisher.test(tab2)
#table has too many entries
#fisher exact test did not work
#let's do a permutation test
#instead of doing one ourselves, let's use the coin package
independence_test(survived ~ class, data = data)
#p-value is very small. Conclude: there is a significant difference at significance level alpha = 0.05
independence_test(guessed ~ truth, data = ladytea, alternative = "greater")
independence_test(guessed ~ truth, data = ladytea)
#2-------- Permutation test for numerical vs cat
#beyond Fisher
rm(list = ls())
library(openintro)
#load a dataset from the openintro textbook
data(hsb2)
head(hsb2)
?hsb2
#check that the variables have the correct type
sapply(hsb2, class)
#change gender and race to factor (categorical) type
hsb2$gender <- as.factor(hsb2$gender)
hsb2$race <- as.factor(hsb2$race)
#summarize all variables
summary(hsb2)
#say: investigate: significant difference in read score between genders?
#always do descriptives first
#num vs cat?
#visualize?
dotchart(hsb2$read)
summary(hsb2$read)
par(mfrow = c(1,2))
dotchart(hsb2$read[hsb2$gender == "male"], col = "blue")
dotchart(hsb2$read[hsb2$gender == "female"], col = "red")
ggplot(hsb2, aes(x=gender, y = read)) + geom_boxplot()
#impressions?
#male median read score > female
#male has more variation than female
ggplot(hsb2, aes(x=read, fill = gender)) + geom_histogram()
ggplot(hsb2, aes(x=gender, y = read)) + geom_violin()
#inference: is what you see significant?
#H0: no difference in read score between M and F
#HA: two-sided: there is a significant difference
#test statistic? mean (or median is ok). 
#this test would be testing for the "average" male vs the "average" female
cbind(hsb2$gender, hsb2$read)
names(hsb2) == "gender"
names(hsb2) == "read"
hsb2[,c(2,7)]
#--- permutation test: randomly reassign gender. 
gendershuffle <- function(){
  randomgender <- sample(hsb2$gender, length(hsb2$gender), FALSE)
  return(abs(diff(by(hsb2$read, randomgender, mean))))
}
meandiff.dist <- replicate(8000, gendershuffle())
hist(meandiff.dist, col = "lightblue")
par(mfrow = c(1,1))
hist(meandiff.dist, col = "lightblue")
observed <- abs(diff(by(hsb2$read, hsb2$gender, mean)))
abline(v = observed, col = "red", lwd = 2)
observed
sum(meandiff.dist >= observed)/length(meandiff.dist) 
#this is my simulated p-value
#significance level (should have been set at the beginning): alpha = 0.01
#conclusion?
#p-value > 0.01. Conclusion: data support the H0
#ie: no sig. diff. in mean test score between M annd F
library(coin)
independence_test(read ~ gender, data = hsb2)
savehistory(file = "permutationtest.inclass.R")
