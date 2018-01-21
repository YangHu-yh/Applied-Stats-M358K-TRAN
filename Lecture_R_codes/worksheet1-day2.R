library(openintro)
data(heartTr)
head(heartTr)
class(heartTr$survtime)
class(heartTr$transplant)
library(ggplot2)
ggplot(heartTr, aes(x=transplant,y=survtime)) + geom_boxplot()
#is what you see significant
#means: is there a sig. diff. in mean survival time between the two groups?
#H0: no sig. diff. 
#HA: is mean survival time in treatment > control?
#sig. level: 0.01
#test: numerical vs categorical
#test: t-test
t.test(heartTr$survtime[heartTr$transplant == "control"], heartTr$survtime[heartTr$transplant == "treatment"], alternative = "less")
#p-value < 0.01, conclusion: treatment group has sig. higher survtime
head(heartTr)
ggplot(heartTr, aes(x = transplant, y = age)) + geom_boxplot()
#t-test: is there a sig. diff. in mean age between the two groups?
t.test(heartTr$age[heartTr$transplant == "control"], heartTr$age[heartTr$transplant=="treatment"])
#no sig. diff. 
#no sig. diff. in mean age between the two groups
head(heartTr)
heartTr
savehistory(file = "worksheet1-day2.R")
