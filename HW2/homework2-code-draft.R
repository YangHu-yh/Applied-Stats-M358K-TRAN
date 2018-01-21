# CLASS M 358K
# UNIQUE NO.:
# MEETING TIME: T TH 9:30 - 11:00

# STUDENT: YANG HU
# UT EID: YH8473
# DUE: 10/10
### titanic dataset
# Load Dataset

# clear the history/data/environment/perameter
rm(list = ls())
# Get neended data, set as data and load needed tools
library(grid)
library(ggplot2)
library(vcd)
setwd("S:/!!!COLLEGE/2017 Fall/M 358K")
titanic <- read.csv("./data/titanic.csv")
#Check data head
head(titanic)
#CHeck type of the columns
sapply(titanic, class)

# 1. (Descriptive question) What are the survival rates of children? Of adult women? Of adults?
sum(titanic$survived == 'yes' & titanic$age == 'child')/sum(titanic$age == 'child')*100

sum(titanic$survived == 'yes' & titanic$age == 'adult' & titanic$sex =='female')/sum(titanic$age == 'adult' & titanic$sex =='female')*100

sum(titanic$survived == 'yes' & titanic$age == 'adult')/sum(titanic$age == 'adult')*100

# Get the survive rate of children: 47.706%, adult women survive rate: 74.35294%, and adult survive rate: 31.26195%

# 2. Question: Is children have significantly better survival rate than adults?
# H0 : children does not have significantly better survival rate than adults
# HA : Children have significantly better survival rate than adults
# cat vs. cat; small number data set - fisher's exact
tab <- table(titanic$survived, titanic$age)
fisher.test(tab)
fisher.test(tab, alternative='greater')
fisher.test(tab, alternative='smaller')
fisher.test(tab, alternative='less')
# 3. Are the survival rate of children signiﬁcantly diﬀerent from that of adult women?
chisq.test(tab)
table(titanic$survivedtitanic$class)
table(titanic$survived，titanic$class)
chisq.test(table(titanic$survived，titanic$class))
table(titanic$survived, titanic$sex)
table(titanic$survived, titanic$sex, titanic$age)
fisher.test(table(titanic$survived, titanic$sex, titanic$age))
table(titanic$survived, titanic$age)
1438+654
sum(titanic$survived == 'yes' & titanic$age == 'adult' & titanic$sex =='female')/sum(titanic$age == 'adult' & titanic$sex =='female')*100
sum(titanic$survived == 'yes' & titanic$age == 'adult' & titanic$sex =='female')
sum(titanic$age == 'adult' & titanic$sex =='female')*100
sum(titanic$age == 'child')
tab
tab1 <- table(titanic$age,titanic$survived)
fisher.test(tab1)
fisher.test(tab1,alternative='greater')
fisher.test(tab1,alternative='less')
sum(titanic$survived == 'yes' & titanic$age == 'adult' & titanic$sex =='female')/sum(titanic$age == 'adult' & titanic$sex =='female')*100
sum(titanic$survived == 'yes' & titanic$age == 'child')/sum(titanic$age == 'child')*100
n1 = 425
n2 = 109
p1at = 74.35294
p2at = 0.47706
p1at = 0.7435294
phat.common = (p1hat*n1 + p2hat*n2)/(n1+n2)
z.twosample = phat.common / sqrt(phat.common*(1-phat.common)/(n1+n2))
z.twosample
p2hat = 0.47706
p1hat = 0.7435294
phat.common = (p1hat*n1 + p2hat*n2)/(n1+n2)
z.twosample = phat.common / sqrt(phat.common*(1-phat.common)/(n1+n2))
z.twosample
phat.common
phat.common / sqrt(phat.common*(1-phat.common)/(n1+n2))
phat.common*(1-phat.common)/(n1+n2)
sqrt(phat.common*(1-phat.common)/(n1+n2))
z.twosample
#compute p-value
(1-pnorm(z.twosample))*2
z.twosample
n1 = 425
n2 = 109
p1hat = 74.35294
p2hat = 0.47706
phat.common = (p1hat*n1 + p2hat*n2)/(n1+n2)
z.twosample = phat.common / sqrt(phat.common*(1-phat.common)/(n1+n2))
n1 = 425
n2 = 109
p1hat = 0.7435294
p2hat = 0.47706
phat.common = (p1hat*n1 + p2hat*n2)/(n1+n2)
z.twosample = phat.common / sqrt(phat.common*(1-phat.common)/(n1+n2))
z.twosample
#compute p-value
(1-pnorm(z.twosample))*2
getwd()
savehistory(file = "homework2-codedraft.R")
library(openintro)
install.packages('openintro')
install.packages("openintro")
library(openintro)
install.packages("openintro")
install.packages("openintro")
library(openintro)
data(hsb2)
head(hsb2)
?hsb2
# Describe in graphs and numbers the distribution of math scores between male and gemale
table(hsb2$math, hsb2$gender)
ggplot(hsb2, aes(x=gender,y=Math)) + geom_violin()
library(ggplot2)
library(vcd)
ggplot(hsb2, aes(x=gender,y=Math)) + geom_violin()
ggplot(hsb2, aes(x=math,y=gender)) + geom_violin()
ggplot(hsb2, aes(x=gender,y=math)) + geom_violin()
ggplot(hsb2, aes(x=math)) + geom_freqpoly(binwidth = 20) + geom_histogram(fill = "gender", colour = "grey60", alpha = 0.5,binwidth=30)
ggplot(hsb2, aes(x=math)) + geom_freqpoly(binwidth = 20) + geom_histogram(fill = "grey", colour = "grey60", alpha = 0.5,binwidth=30)
ggplot(hsb2, aes(x=math)) + geom_freqpoly(binwidth=10) + facet_grid(gender ~ .)
# Is there a significant difference in the median score between these two groups Use a permutation test to find out
independence_test(math ~ gender, data = hsb2)
library(coin)
independence_test(math ~ gender, data = hsb2)
genderpermu <- function(){
randomgender <- sample(hsb2$gender, length(hsb2$gender), FALSE)
return(abs(diff(by(hsb2$math, randomgender, mean))))
}
head(genderpermu)
genderpermu <- function(){
randomgender <- sample(hsb2$gender, length(hsb2$gender), FALSE)
return(abs(diff(by(hsb2$math, randomgender, median))))
}
mediandiff.dist <- replicate(10000, genderpermu())
hist(mediandiff.dist, col='lightblue')
abs(diff(by(hsb2$math, randomgender, mean)))
randomgender <- sample(hsb2$gender, length(hsb2$gender),
4         FALSE)
randomgender <- sample(hsb2$gender, length(hsb2$gender), FALSE)
abs(diff(by(hsb2$math, randomgender, mean)))
abs(diff(by(hsb2$math, randomgender, median)))
observed <- abs(diff(by(hsb2$read, hsb2$gender, median)))
abline(v = observed, col = "red", lwd = 2)
observed <- abs(diff(by(hsb2$math, hsb2$gender, median)))
abline(v = observed, col = "lightblue", lwd = 2)
sum(mediandiff.dist >= observed)/length(mediandiff.dist)
savehistory(file = 'homework2-codedraft.R')
















murders$pop <- as.data.frame(cbind(c(187029, 357538, 232774,312245,310554, 220087, 364815,339314, 313935,255483,247182,182445,255540,240499,237927,275499,254927,206285,158251,160436,304481,276938,200543,310460,281395,187527,288717,191123,256012,259742,307710, 219582)))
