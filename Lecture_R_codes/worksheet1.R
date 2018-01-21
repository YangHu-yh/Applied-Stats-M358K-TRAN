#-- solution to worksheet 1
rm(list = ls())
library(vcd)
library(ggplot2)
setwd("/home/ngoc/gitfolders/358K/codes/data")
#--- Problem 1:
dream <- read.csv("dream.csv", header = TRUE)
#check variable types
class(dream$ideology)
class(dream$stance)
#good. these are the types we waant. 
#summarize
summary(dream)
#ideology vs stance: cat vs cat. Mosaic / barcharts etc are good. 
mosaic(stance ~ ideology, data = dream)
#table
dream.table <- table(dream$stance, dream$ideology)
#-- thoughts: for support rate, liberals > moderate = conservative. 
#for against rate, liberal < conservative < moderate
#--- hypothesis test.
#null hypothesis: no association between stance and ideology. 
#alternative: there is an association. 
#alpha: 0.01
#test: 3x3 contingency table. chi-square
chisq.test(dream.table)
#p-value = 0.0025 < 0.01. Reject null. There is an association at significance level 0.01.

#--------- Problem 2: the American dream
#class proportion from poll
rm(list = ls())
n = 38
phat = 28/n
#national p
p0 = 0.77
#H0: class proportion is NOT sig. diff. ffrom national proportion
#HA: class proportion IS sig. diff. ffrom national proportion
#alpha = 0.01
#Test: z-test for proportions. (two-sided)
z = (phat - p0)/sqrt(p0*(1-p0)/n)
#compute p-value for two-sided test
pnorm(z)*2
#p-value > alpha = 0.01. 
#conclude: do not reject H0. Class proportion is NOT sig. diff from national proportion. 


#------- Problem 3: Heart transplant
#reset workspace since we are dealing with a new dataset
rm(list = ls())
library(openintro)
data(heartTr)

#variables of interest: survived, survtime, transplant
#check their types
class(heartTr$survived)
class(heartTr$survtime)
class(heartTr$transplant)
#good. correct types. 
#plot: survived vs transplant: cat vs cat
mosaic(survived ~ transplant, data = heartTr)
#treatment group has better survival rate
#test: cat vs cat. 2x2 table. Fisher tests
#H0: no difference in survival rate between treatment and control
#HA: treatment > control (onesided)
#alpha: 0.01
heart.table <- table(heartTr$survived, heartTr$transplant)
fisher.test(heart.table, alternative = "less")
#p-value > alpha. Reject null! No sig. difference. at alpha = 0.01 level. 

#survtime vs transplant: nunmerical vs cat
ggplot(heartTr, aes(x = transplant, y = survtime)) + geom_boxplot()
#treatment group has better survival time. 




 





