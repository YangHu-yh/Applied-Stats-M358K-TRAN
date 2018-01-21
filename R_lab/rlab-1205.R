#---- vectorized computations
#--- Lam-IntroductiontoR - chapter 6
#-- weighted average
x <- c(1:10)
weights <- rep(c(1:5),2)
x
weights
#calculate weighted average
sum(x*weights)/sum(weights)
#--- equivalent in for loop will be much slower
#(we will do the for loop later)
ifelse(x > 5, 1, -1)
head(cars)
#get all cars with speed > 6 
select <- cars$speed > 6
select
#alternative with ifelse
ifelse(cars$speed > 6, "big", "small")
#----------- 6.2: apply function
?apply
M <-- matrix(rnorm(10), ncol = 5)
M
#-- compute row means
apply(M, 1, mean)
#-- compute column means
apply(M, 2, mean)
#--- regression example
library(MASS)
head(cars)
myregr <- function(data){
lm(Price ~ Weight, data = data)
}
head(Cars)
head(cars)
head(mtcars)
#--- do another demonstration of by
?by
#by: apply a function to subsets of the dataset, stratified by a certain factor
#-- example
library(openintro)
data(hsb2)
head(hsb2)
?by
by(hsb2$math, hsb2$ses, mean)
by(hsb2$math, hsb2$gender, mean)
by(hsb2$math, hsb2$gender, median)
#--- most useful functions: apply and by
#--------- next: how to write your own R functions
#--- example of a function
#reference: Chapter 5
meank <- function(x,k){
xt <- quantile(x, c(k,1-k))
mean(x)
}
xt <- quantile(x, c(k,1-k)){
meank <- function(x,k){
mean(x[1:k])
}
#compute the mean of the first k entries of x
meank(rnorm(100))
meank(rnorm(100), 10)
meank(1:10, 5)
#-- more complicated function (ie: longer, with loops)
#-- to return a value: use the keyword return
power <- function(x, k=2){
x^k
}
#k will default be equal to 2
power(4)
power(4,3)
myf <- function(x,y){
z1 <- sin(x)
z2 <- cos(y)
return(z1+z2)
}
my(10,100)
myf(10,100)
myf <- function(x,y){
z1 <- sin(x)
z2 <- cos(y)
return(c(z1,z2))
}
myf(10,100)
#-- demonstrate:  for
for(i in 1:10){
print(i)
}
for(i in hsb2$ses){
print(i)
}
#-- while
i = 1
while(i < 10){
print(i)
i = i +1
}
#--- debugging, scoping, etc...; alll explained in chapter 5
#---- solution to exercise2
#---- exercise2 solutions
#--- question 1
rm(list = ls())
coin.toss <- function(n){
tosses <- rbinom(n,1,0.5)
table(tosses)
}
coin.toss(10)
?table
rm(list = ls())
coin.toss <- function(n){
tosses <- rbinom(n,1,0.5)
table(tosses, dnn = c("head","tail"))
}
coin.toss(10)
tosses <- rbinom(n,1,0.5)
tosses <- rbinom(10,1,0.5)
table(tosses)
#table(tosses, dnn = c(",..))
?table
#I give up on making this table pretty - it is self-explanatory

rm(list = ls())
coin.toss <- function(n){
tosses <- rbinom(n,1,0.5)
table(tosses)
}
barplot(tosses)
?barplot
tosses
tosses <- rbinom(100,1,0.5)
barplot(tosses)
tosses.table <- table(tosses)
names(tosses.table)
barplot(tosses.table)
barplot(tosses.table)
barplot(tosses.table, xlab = c("tail", "head"))
names(tosses.table)
coin.toss <- function(n,p=0.5){
tosses <- rbinom(n,1,p)
tosses.table <- table(tosses)
names(tosses.table) <- c("tail","head")
print(tosses.table)
#barplot
barplot(tosses.table, xlab = "coin toss")
}
coin.toss(100)
coin.toss <- function(n,p=0.5,plot=TRUE){
tosses <- rbinom(n,1,p)
tosses.table <- table(tosses)
names(tosses.table) <- c("tail","head")
if(plot){
barplot(tosses.table, xlab = "coin toss")
}else{
print(tosses.table)
}
}
#--- test the function
coin.toss(100)
coin.toss(100, p = 0.25)
coin.toss(100, p = 0.25, plot = FALSE)
?sample
random.matrix <- function(n,m){
  s = sample(0:100, m*n, replace = TRUE)
  return(matrix(s, nrow = m, ncol = n))
}
random.matrix(10,2)
x <- c(1:1000)
x3or5 <- x[x %% 3 == 0 || x %% 5 == 0]
x3or5
x %% 3 == 0
x %% 3 == 0 | x %% 5 == 0
x <- c(1:1000)
#x3or5 <- x[x %% 3 == 0 | x %% 5 == 0]'
x3or5 <- x[x %% 3 == 0 | x %% 5 == 0]
x3or5
sum(x3or5)
fiblist = c(1,2)
fiblist[-1]
append(fiblist,3)
fiblist
fiblist = c(1,2)
fib <- function(n=4000000){
  next.term = fiblist[-1] + fiblist[-2]
  if(next.term > n){
    return(fiblist)
  }else{
    fiblist <- append(fiblist,next.term)
  }
}
fib(100)
fiblist
fib <- function(n=4000000){
  fiblist = c(1,2)
  next.term = fiblist[-1] + fiblist[-2]
  while(next.term < n){
    next.term = fiblist[-1] + fiblist[-2]
  if(next.term > n){
    return(fiblist)
  }else{
    fiblist <- append(fiblist,next.term)
  }
  }
}
fib(100)
fib <- function(n=4000000){
  fiblist = c(1,2)
  next.term = fiblist[-1] + fiblist[-2]
  while(next.term < n){
    fiblist <- append(fiblist,next.term)
    next.term = fiblist[-1] + fiblist[-2]
  }
  return(fiblist)
}
fib(10)
fiblist
c(fiblist,3)
fib <- function(n=4000000){
  fiblist = c(1,2)
  next.term = fiblist[-1] + fiblist[-2]
  while(next.term < n){
    fiblist <- c(fiblist,next.term)
    next.term = fiblist[-1] + fiblist[-2]
  }
  return(fiblist)
}
fib(10)
warnings()
  fiblist = c(1,2)
  next.term = fiblist[-1] + fiblist[-2]
next.term
fiblist <- c(fiblist,next.term)
fiblist
    next.term = fiblist[-1] + fiblist[-2]
next.term
fiblist[-1]
fiblist
?append
fib <- function(n=4000000){
  fiblist = c(1,2)
  m = length(fiblist)
  next.term = fiblist[m] + fiblist[m-1]
  while(next.term < n){
    fiblist <- c(fiblist,next.term)
    m = length(fiblist)
    next.term = fiblist[m] + fiblist[m-1]
  }
  return(fiblist)
}
fib(10)
fiblist <- fib(4000000)
length(fiblist)
fiblist
sum(fiblist[fiblist %% 2 == 1])
savehistory(file = "rlab-1205.R")
