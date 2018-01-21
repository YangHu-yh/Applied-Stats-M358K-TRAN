#--------
#A demonstration of the permutation test with various datasets.
#Author: Ngoc M. Tran
#Date: September 13th, 2017

#--- set home folder, load data
setwd("~/gitfolders/358K/codes")
library(ggplot2)
library(vcd)
rm(list = ls())
data <- read.csv("data/titanic.csv", header=TRUE)

#--- use the coin package for permutation test
#if you don't have it, need to install using the command: #install.packages("coin")
library(coin)

#set random seed, so that you get the same output. 
set.seed(37)

#1------- Permutation test for cat vs cat (eg: sex vs survived)

#---- Fisher vs permutation test 1

#lady tasting tea data
ladytea <- as.data.frame(cbind(c(1,1,1,1,0,0,0,0), c(1,1,1,1,0,0,0,0)))
names(ladytea) <- c("guessed", "truth")
#fisher's exact test, two-sided
fisher.test(table(ladytea))

#--- write a simulation for the permutation test
#randomly assign the cup's true labels
sam <- sample(ladytea$truth, length(ladytea$truth), FALSE)
#compute the test statistic: the number of correct cups
sum(ladytea$guess[sam==1])
#write a small function to replicate this 2000 times.
teashuffle <- function(){
  sam <- sample(ladytea$truth, length(ladytea$truth), FALSE)
  return(sum(ladytea$guess[sam==1]) + sum(ladytea$guess[sam==0]==0))
}
Sdist <- replicate(2000, teashuffle())
#quick histogram
hist(Sdist, col = "lightblue")
#mark our test statistics on the histogram
abline(v = sum(ladytea$guess[ladytea$truth==1])*2, col = "red", lwd = 2)
#compute the p-value from the permutation test
sum(Sdist >= 8)/length(Sdist)
#note the exact p-value from Fisher's one-sided test
fisher.test(table(ladytea), alternative = "greater")$p.value
#we are pretty close. Run to 5000 simulations
Sdist <- replicate(5000, teashuffle())
#quick histogram
hist(Sdist, col = "lightblue")
#mark our test statistics on the histogram
abline(v = sum(ladytea$guess[ladytea$truth==1]), col = "red", lwd = 2)
#compute the p-value from the permutation test
sum(Sdist >= 4)/length(Sdist)
#even closer. 

#----- Exact test vs permutation test 2
#instead of assuming that the lady knows there are 4 cups of each type, suppose that the lady guess randomly for EACH cup. 
#one can simulate the null by flipping a coin for each of her guess. 

teashuffle2 <- function(){
  randomguess <- replicate(length(ladytea$truth), rbinom(1,1,0.5))
  return(sum(randomguess[ladytea$truth == 1]) + 4-sum(randomguess[ladytea$truth == 0]))
}
Sdist2 <- replicate(5000, teashuffle2())
#quick histogram
hist(Sdist2, col = "lightblue")
#mark our test statistics on the histogram
abline(v = sum(ladytea$guess[ladytea$truth==1]) + 4-sum(ladytea$guess[ladytea$truth == 0]), col = "red", lwd = 2)
#compute the p-value from the permutation test
sum(Sdist2 >= 8)/length(Sdist2)
#actual p-value
1/2**8
#test from the coin library
independence_test(guessed ~ truth, data = ladytea, alternative = "greater")
#is close to the actual p-value. 
#NOTE: the independence_test does not fix rows and column sums. This test uses a rather sophisicated test statistics, whose distribution under H0 is simulated. 

#---- permutation test on Titanic data: class vs survived
tab2 <- table(data$survived, data$class) 
fisher.test(tab2)
independence_test(survived ~ class, data = data)

#2-------- Permutation test for numerical vs cat

rm(list = ls())
library(openintro)
#load a dataset from the openintro textbook
#data description is under openintro-datadescriptions.pdf on canvas. 
data(hsb2)
head(hsb2)
#check that the variables have the correct type
sapply(hsb2, class)
#change gender and race to factor (categorical) type
hsb2$gender <- as.factor(hsb2$gender)
hsb2$race <- as.factor(hsb2$race)
#summarize
summary(hsb2)

#-- Say we want to investigate: is there a significant difference in read score vs gender?
#hypotheses: H_0: no difference in the MEAN; H_A: there is a significant difference in MEAN
#test statistics: |mean female score - mean male score|
#first, descriptive analysis. 
ggplot(hsb2, aes(x=read, fill = gender)) + geom_histogram()
ggplot(hsb2, aes(x=gender, y = read)) + geom_boxplot()
ggplot(hsb2, aes(x=gender, y = read)) + geom_violin()
#summary: 
by(hsb2$read, hsb2$gender, summary)
#note: male has higher mean and median. Unclear if this is significant or not. 
#--- permutation test: randomly reassign gender. 
gendershuffle <- function(){
  randomgender <- sample(hsb2$gender, length(hsb2$gender), FALSE)
  return(abs(diff(by(hsb2$read, randomgender, mean))))
}
meandiff.dist <- replicate(8000, gendershuffle())
hist(meandiff.dist, col = "lightblue")
#show the test statistics on the histogram
observed <- abs(diff(by(hsb2$read, hsb2$gender, mean)))
abline(v = observed, col = "red", lwd = 2)
#compute the p-value from our simulation
sum(meandiff.dist >= observed)/length(meandiff.dist) 
#conclusion: no evidence to reject H_0 in favor of H_A. Most likely: difference is not significant. 
#use the coin package
library(coin)
independence_test(read ~ gender, data = hsb2)

#3------------ Permutation test: test of proportion (cat)
#Is there is a significant proportion of white students relative to the national demographics?  
#Wikipedia: Whites constitute the majority of the U.S. population, with a total of about 245,532,000 or 77.7% of the population as of 2013. 
#So, are whites over-represented in high school (significantly higher than 77.7%)?
#assume: this is a representative survey of 200 students
#H_0: not significant. H_A: is significantly higher (one-sided).
#test statistic: proportion of white in the sample. 

#descriptive
table(hsb2$race)
#test statistic
observed <- sum(hsb2$race == "white") / length(hsb2$race)
#permutation test: 
#under the null: if we were to choose 200 students at random, then each has probability 0.777 to be white. 
#so the proportion of white in the sample should be: binomial(200, 0.777)/200. 
#simulate the null:
proportion.dist <- rbinom(2000, 200, 0.777)/200
hist(proportion.dist, col = "lightblue")
#mark the test statistic
abline(v = observed, col = "red", lwd = 2)
#one-sided test (greater)
sum(proportion.dist >= observed)/2000
#conclusion: no reason to reject the null. 

#two-sided test: test statistic should be: |proportion - 0.777|. 
proportion.dist2 <- abs(proportion.dist-0.777)
histogram(proportion.dist2, col = "lightblue")
abline(v = abs(observed-0.777), col = "red", lwd = 2)
sum(proportion.dist2 >= abs(observed-0.777)) / 2000
#also no reason to reject the null. 


 










