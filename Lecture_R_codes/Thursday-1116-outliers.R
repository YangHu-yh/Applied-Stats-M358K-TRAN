library(R.utils)
library(rstan)
install.packages("rstan")
library(manipulate)
install.packages("manipulate")
p <- seq(from=0.005, to=0.995, by=0.005)
library(manipulate)
manipulate( # requires RStudio
{plot(p, dbeta(p, alpha.hyper, beta.hyper),
col="blue", lwd=2, type="l", las=1, bty="n",
ylim=c(0, 8), ylab="density",
main="Beta prior distribution")
polygon(c(p, rev(p)), c(dbeta(p, alpha.hyper, beta.hyper),
rep(0, length(p))), col=rgb(0, 0, 1, 0.2), border=NA)},
alpha.hyper=slider(0.1, 10, step=0.1, initial=1),
beta.hyper=slider(0.1, 10, step=0.1, initial=1))
p.true <- 0.7
N <- 30
y <- rbinom(N, size=1, prob=p.true)
table(y)/N
likelihood <- sapply(p, function(p) { prod(p^y * (1-p)^(1-y)) } )
plot(p, likelihood, lwd=2, las=1, bty="n", type="l")
like.rescale <- 4 * likelihood/max(likelihood)
manipulate(
{plot(p, like.rescale, lwd=2, las=1, bty="n",
ylim=c(0,8), type="l", ylab="density",
main="Beta prior (blue) x Likelihood (black) = Beta posterior (red)")
alpha.hyper.post <- alpha.hyper + sum(y)
beta.hyper.post <- beta.hyper + N - sum(y)
lines(p, dbeta(p, alpha.hyper, beta.hyper), col="blue", lwd=2)
polygon(c(p, rev(p)), c(dbeta(p, alpha.hyper, beta.hyper),
rep(0, length(p))), col=rgb(0, 0, 1, 0.2), border=NA)
lines(p, dbeta(p, alpha.hyper.post, beta.hyper.post), col="red", lwd=2)
polygon(c(p, rev(p)), c(dbeta(p, alpha.hyper.post, beta.hyper.post),
rep(0, length(p))), col=rgb(1, 0, 0, 0.2), border=NA)
lines(p, like.rescale, lwd=2)},
alpha.hyper=slider(0.1, 10, step=0.1, initial=1),
beta.hyper=slider(0.1, 10, step=0.1, initial=1))
rm(list = ls()
)
rm(list = ls())
library(manipulate)
p <- seq(from=0.005, to=0.995, by=0.005)
manipulate( # requires RStudio
{plot(p, dbeta(p, alpha.hyper, beta.hyper),
col="blue", lwd=2, type="l", las=1, bty="n",
ylim=c(0, 8), ylab="density",
main="Beta prior distribution")
polygon(c(p, rev(p)), c(dbeta(p, alpha.hyper, beta.hyper),
rep(0, length(p))), col=rgb(0, 0, 1, 0.2), border=NA)},
alpha.hyper=slider(0.1, 10, step=0.1, initial=1),
beta.hyper=slider(0.1, 10, step=0.1, initial=1))
p.true <- 0.7
N <- 30
y <- rbinom(N, size=1, prob=p.true)
table(y)/N
likelihood <- sapply(p, function(p) { prod(p^y * (1-p)^(1-y)) } )
plot(p, likelihood, lwd=2, las=1, bty="n", type="l")
## (To help with visibility)
like.rescale <- 4 * likelihood/max(likelihood)
manipulate(
{plot(p, like.rescale, lwd=2, las=1, bty="n",
ylim=c(0,8), type="l", ylab="density",
main="Beta prior (blue) x Likelihood (black) = Beta posterior (red)")
alpha.hyper.post <- alpha.hyper + sum(y)
beta.hyper.post <- beta.hyper + N - sum(y)
lines(p, dbeta(p, alpha.hyper, beta.hyper), col="blue", lwd=2)
polygon(c(p, rev(p)), c(dbeta(p, alpha.hyper, beta.hyper),
rep(0, length(p))), col=rgb(0, 0, 1, 0.2), border=NA)
lines(p, dbeta(p, alpha.hyper.post, beta.hyper.post), col="red", lwd=2)
polygon(c(p, rev(p)), c(dbeta(p, alpha.hyper.post, beta.hyper.post),
rep(0, length(p))), col=rgb(1, 0, 0, 0.2), border=NA)
lines(p, like.rescale, lwd=2)},
alpha.hyper=slider(0.1, 10, step=0.1, initial=1),
beta.hyper=slider(0.1, 10, step=0.1, initial=1))
manipulate(
{plot(p, like.rescale, lwd=2, las=1, bty="n",
ylim=c(0,8), type="l", ylab="density",
main="Beta prior (blue) x Likelihood (black) = Beta posterior (red)")
alpha.hyper.post <- alpha.hyper + sum(y)
beta.hyper.post <- beta.hyper + N - sum(y)
lines(p, dbeta(p, alpha.hyper, beta.hyper), col="blue", lwd=2)
polygon(c(p, rev(p)), c(dbeta(p, alpha.hyper, beta.hyper),
rep(0, length(p))), col=rgb(0, 0, 1, 0.2), border=NA)
lines(p, dbeta(p, alpha.hyper.post, beta.hyper.post), col="red", lwd=2)
polygon(c(p, rev(p)), c(dbeta(p, alpha.hyper.post, beta.hyper.post),
rep(0, length(p))), col=rgb(1, 0, 0, 0.2), border=NA)
lines(p, like.rescale, lwd=2)},
alpha.hyper=slider(0.1, 10, step=0.1, initial=1),
beta.hyper=slider(0.1, 10, step=0.1, initial=1))
getwd()
savehistory("Tuesday-Bayesian.R")
q()
#--- discussions on outliers and NAs
#--- contact: good to know the dataset, know why values are missing, and often in social science, this can reduce NAs (ie: some values do get filled out
#--- contact: bad if you cannot contact the person, or in some cases there's nothing one can do (eg: survey, respondents have moved on)
#---- interpolate: good: the best guess based on your knowledge so far
#---- interpolate: bad: it does not give you new information. Rather, it just reinforces whatever information there is already there. 
#it is easy to interpolate, and then obtain a very strong regression result
#this is because the regression model was often used to do the interpolation in the first place. 
#--- BAD
#---- interpolation is often used for technical reasons: eg: you need to fit a complicated math model and it does not handle NAs well 
#example: certain matrices need to be invertible tec
#---- 3rd strategy: exclude all observations with NAs
#--- BAD: if a lot of the rows are missing just one (out of the many possible variables), then you end up excluding ALOT
#-- common to have 99% missing values in datasets of Netflix, Facebook etc
#example: Netflix movie dataset: rows = users, columns = movies, entries = movie rating by this user
#most users have never seen all movies there are (in fact, most only see less than 1% of the total movies available)
#so this means there are no rows with complete entries
#---- 3rd strategy is only good if you have very few missing entries
#--- in this case, can afford to lose a few observations for simplicity
#--- finally: 4th strategy is better than 3
#--- except that certain mathematical techniques require that you have a complete dataset (with no NAs)
#--- example: stepAIC
pnorm(-3)
pnorm(-3)*2
1-pnorm(-3)*2
#--- dealing with outliers
#--- look at some examples on how to deal with outliers
library(openintro)
data(teacher)
library(OIdata)
data(teacher)
head(teacher)
#--- we did this many times
#we knew that there is one person with very low salary
hist(teacher$total)
dotchart(teacher$total)
mean(teacher$total)
sd(teacher$total)
min(teacher$total)
(min(teacher$total)-mean(teacher$total))/sd(teacher$total)
#more than 3 sd in absolute value
#so this according to the 3-sd-rule: it is an outlier
#-- question: should we include this in our regression model for total vs other variables?
teacher[teacher$totall == min(teacher$total),]
teacher[teacher$total == min(teacher$total),]
#-- this person is part time! Perhaps that is the reason for the low salary
#-- to check: should check if there are any other part time teachers in the dataset
table(teacher$fte)
#-- no: this is the only part time person
#-- so: it is reasonable to exclude this observation from further analysis of salary
#---------------
library(openintro)
data(emails)
#--- before moving on: could there be other points that are more than 3sd away?
salary.scaled <- scale(teacher$total, 0,1)
#scale commands: rescale your variable so that it has the specified mean and sd (usually 0 and 1)
boxplot(salary.scaled)
salary.scaled
?scale
salary.scaled <- (teacher$total - mean(teacher$total))/sd(teacher$total)
salary.scaled
boxplot(salary.scaled)
#from this scaled version: it is clear that there is only one observation 3sd away
#can also just do artihmetic on salary.scaled without plotting:
sum(abs(salary.scaled) >= 3)
#------- 
library(mammals)
data(mammals)
dotchart(mammals$BodyWt)
#clear: at least one outlier
#-- let's find that
#using the 3sd rule. 
bodywt.scaled <- (mammals$BodyWt - mean(mammals$BodyWt))/sd(mammals$BodyWt)
sum(abs(bodywt.scaled) >= 3)
#from the dotchart: it is clear that if we exclude this one observation (with very large bodyweight)
#then there will be a new outlier (around 2500)
#--- let's say we will commit to excluding elefants
#we will only study mammals with reasonably similar body sized
select <- mammals$BodyWt < 2000
mammals2 <- mammals[select,]
dotchart(mammals2$BodyWt)
select
mammals[select,]
#--- in this case: needed to exclude twice. 
#------ one last example.
library(marioKart)
data(marioKart)
head(marioKart)
#--- goal was to predict totalPr
plot(marioKart$totalPr)
select <- marioKart$totalPr == max(marioKart$totalPr)
marioKart[select,]
#-- ah: Guitar Hero was bundled in with the Mario Kart
#-- so one can just exclude this observation
marioKart <- marioKart[select,]
data(marioKart)
marioKart <- marioKart[!select,]
plot(marioKart$totalPr)
select <- marioKart$totalPr == max(marioKart$totalPr)
marioKart[select,]
#-- same thing: they are selling other things in this transaction
#-- so we can exclude it
marioKart <- marioKart[!select,]
plot(marioKart$totalPr)
dotchart(marioKart$totalPr)
boxplot(marioKart$totalPr)
#compute sd rule just to be sure
totalpr.scaled <- (marioKart$totalPr - mean(marioKart$totalPr))/sd(marioKart$totalPr)
boxplot(totalpr.scaled)
summary(totalpr.scaled)
dotchart(totalpr.scaled)
#-- no real reason to investigate this point further
dotchart(totalpr.scaled)
boxplot(totalpr.scaled)
boxplot(marioKart$totalPr)
#---- let's take a quick peek at the final project dataset
getwd()
setwd("/home/ngoc/gitfolders/358K/codes/data")
setwd("/home/ngoc/gitfolders/358K/codes")
setwd("/home/ngoc/gitfolders/358K/codes/homework")
houses <- read.csv("kc_house_data.csv", header = TRUE)
head(houses)
dim(houses)
dotchart(houses$price)
head(houses$price)
house$prices.100K <- house$prices/100000
houses$prices.100K <- houses$prices/100000
houses$price.100K <- houses$price/100000
dotchart(houses$price.100K)
#if we compute the 3SD rule:
price.scaled <- (houses$price.100K - mean(houses$price.100K))/sd(houses$price.100K)
summary(price.scaled)
#--- need more investigatoin
#--- another option: if you do believe that there is a small fraction of super expensive houses, and that is just a feature, not a bug
#--- then may want to transform house prices
#-- common transform would be log
plot(log(houses$price))
dotchart(log(houses$price))
#taking log seems to be a good idea: turn houses$price to a distribution closer to normal)
#--- normality in Y (or its transform) is a good idea
#--- this means: most likely,  you get better success by running regression of log(prices) ~ other variables instead of prices ~ variables
savehistory("Thursday-1116-outliers.R")
