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
fisher.test(tab, alternative='greater')

# 3. Are the survival rate of children signiﬁcantly diﬀerent from that of adult women?
n1 = 425
n2 = 109
p1hat = 0.7435294
p2hat = 0.47706
phat.common = (p1hat*n1 + p2hat*n2)/(n1+n2)
z.twosample = phat.common / sqrt(phat.common*(1-phat.common)/(n1+n2))
#compute p-value
(1-pnorm(z.twosample))*2






HSB2

# 1. Describe in graphs and numbers the distribution of math scores between male and gemaletable(hsb2$math, hsb2$gender)
library(ggplot2)
library(vcd)
ggplot(hsb2, aes(x=gender,y=math)) + geom_violin()
ggplot(hsb2, aes(x=math)) + geom_freqpoly(binwidth=1) + facet_grid(gender ~ .)

# 2. Is there a significant difference in the median score between these two groups Use a permutation test to find out
# H0 = no significant
# HA =  are significantly different
genderpermu <- function(){
randomgender <- sample(hsb2$gender, length(hsb2$gender), FALSE)
return(abs(diff(by(hsb2$math, randomgender, median))))
}
mediandiff.dist <- replicate(10000, genderpermu())
hist(mediandiff.dist, col='lightblue')
observed <- abs(diff(by(hsb2$math, hsb2$gender, median)))
abline(v = observed, col = "lightblue", lwd = 2)
# p-value
sum(mediandiff.dist >= observed)/length(mediandiff.dist)

# 3. 3.	Is there a signiﬁcant diﬀerence between male and female in the proportion of those who math score is 65 or more? Use a test of your choice

hsb2$math.recoded <- cut(hsb2$math, breaks = c(0,20,40,60,80,100), right = FALSE)
table(hsb2$gender,hsb2$math.recoded)

hsb2$math.recoded2 <- cut(hsb2$math, breaks = c(0,65,100), right = FALSE)
head(hsb2$math.recoded2)
table(hsb2$math.recoded2, hsb2$gender)
# to set the table a name to test in fisher's exact
tabhsb <- table(hsb2$math.recoded2, hsb2$gender)
fisher.test(tabhsb)



# Start murders dataset
# 1
library(OIdata)
data(murders)
head(murders)
table(murders$borough)
?murders
install.packages("RColorBrewer")
date1    <- as.Date(murders$date,"%m/%d/%y")
date2    <- julian(date1,origin = as.Date("2006-01-02"))
date_cut <- cut(date2, seq(0, 2073, 90))
barplot(table(date_cut), xaxt = "n",
xlab = "date from 01/2006 - 09/2011",
ylab = "n deaths per 90 days")
## Not run:
# install.packages("ggplot2")
# install.packages("RColorBrewer")
library(ggplot2)
library(RColorBrewer)
data(london_boroughs)
LB          <- london_boroughs
mtab        <- table(murders$borough)
LB$nmurders <- rep(mtab, rle(as.character(LB$name))$lengths)
p           <- ggplot()
p +
geom_polygon(data=LB, aes(x=x, y=y, group = name, fill = nmurders),
colour="white" ) +
scale_fill_gradientn(colours = brewer.pal(7, "Blues"),
limits=range(LB$nmurders))

# 2.
table(murders$borough)

pop <- as.data.frame(cbind(c(187029, 357538, 232774,312245,310554, 220087, 364815,339314, 313935,255483,247182,182445,255540,240499,237927,275499,254927,206285,158251,160436,304481,276938,200543,310460,281395,187527,288717,191123,256012,259742,307710, 219582)))
murderbyb <- as.data.frame(cbind(c("BarkingDagenham","Barnet","Bexley","Brent",'Bromley','Camden','Croydon','Ealing','Enfield','Greenwich','Hackney','HammersmithFulham','Haringey','Harrow','Havering','Hillingdon','Hounslow','Islington' ,'KensingtonChelsea','Kingston','Lambeth','Lewisham','Merton','Newham','Redbridge','Richmond','Southwark','Sutton','TowerHamlet','Waltham Forest','Wandsworth','Westminster')))

table(murders$borough)/pop
