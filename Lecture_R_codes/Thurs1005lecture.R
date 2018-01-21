getwd()
#new york test
#null hypothesis: new yorkers in the sample on average sleep 8 hours a night.
#alternative: they sleep LESS than 8 hours a night
#one-sided. 
#sig. level:  0.05
#will use: t-test
#the variable we're testing is: number of hours of sleep per night
t = (7.73 - 8)/(0.77/sqrt(25))
t
#compute the p-value
#which is the probability that a t-distribution with n-1 degrees of freedom
#has values < -1.75 etc
?pt
pt(t, 25-1)
#the above is the p-value
#p-value < 0.05
#conclusion: data supports that NY (based on the sample) do sleep sig. less than 8 hours a night. 
#--- next: t-test for diff. in sample mean
library(OIdata)
data(teacher)
?teacher
#test: is there a sig. diff. in the average SALARY between the two degrees group?
head(teacher)
#variables of interest: degree (cat.), total (num.)
#visualize: total vs degree
library(ggplot2)
library(vcd)
ggplot(teacher, aes(x=total, fill=degree)) + geom_bar()
dotchart(teacher$total)
par(mfrow = c(1,2))
dotchart(teacher$total[teacher$degree == "MA"], main = "MA")
dotchart(teacher$total[teacher$degree == "BA"], main = "BA")
ggplot(teacher, aes(x=degree,y=total)) + geom_violin()
ggplot(teacher, aes(x=degree,y=total)) + geom_boxplot()
#t-test
#H0: no sig. diff. between mean salary for MA vs mean salary for BA
#HA: sig. diff. between mean salary for MA vs mean salary for BA
#sig. level: 0.01
#t-test
t.test(teacher$total[teacher$degree == "MA"], teacher$total[teacher$degree == "BA"])
#p-value: 0.8841 > 0.01
#conclusion: no sig. diff. in MEAN salary between the two groups. 
savehistory(file = "Thurs1005lecture.R")
