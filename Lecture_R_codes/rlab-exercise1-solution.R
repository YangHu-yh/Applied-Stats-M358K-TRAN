sqrt(3)
qnorm(0.25,0,1)
#10th quantile of normal(0,1)
qnorm(0.1,0,1)
qnorm(0.75,0,1) #75th quantile
qnorm(0.95,0,1) #95th quantile
rbinom(100, 1, 0.5) #generate 100 random Bernoulli(0.5)
#display heads and tails
tosses <- rbinom(100,1,0.5)
table(tosses)
#----------------- solution to R exercise 2
allIntegers = c(1:100)
all.odds = seq(1,100,by=2)
all.odds
all.evens = seq(2,100,by=2)
#all numbers divisible by 7: either can do by 7, or select a subset
#solution 1: do by 7
all.seven = seq(7,100,by=7)
all.seven
#solution 2: take a subset of allIntegers at entries where they are divisible by 7
all.seven7 = allIntegers[allIntegers %% 7 == 0]
all.seven7
#next: find mean and standard deviation of our list above
mean(all.seven)
sd(all.seven)
#compute the big sum:
square.root = sqrt(c(1:100))
log.i = log(c(1:100))
big.sum = sum(square.root*log.i)
big.sum
#-- find the singular value: first create the matrix, then apply the command svd
for( i in c(1:100)){
for(j in c(1:100)){
A = matrix(NA, ncol = 100, nrow = 100) #create an empty 100x100 matrix first
}
#now populate it with entries one-by-one
for(i in c(1:100)){
for(j in c(1:100)){
A[i,j] = i+j
}
head(A)
#svd
svd(A)
#---- part 3: vectors and arrays
#---- first: create a random matrix
M = matrix(runif(350,0,100), nrow = 70, ncol = 5)
M[1,]
M <- round(M)
round(0.25)
round(0.6)
M[1,]
M
#-- turn M into a dataframe
M <- as.data.frame(M)
M
names(M)
names(M) <- c("homework1", "homework2", "homework3", "midterm", "final")
names(M)
M
head(M)
#---- compute the total score
#--- compute the best of two homework
#-- useful command: apply
?apply
apply(M, 1, sum)
apply(M, 2, sum)
#compute the maximum of 3 homeworks
apply(M[,1:3], 1, max)
M$maxhomework <- apply(M[,1:3],1,max)
head(M)
M$minhomework <- apply(M[,1:3],1,min)
head(M)
#sum of the best two homework
M$bestwo.sum <- M$homework1 + M$homework2 + M$homework3 - M$minhomework
head(M)
#--- compute the total score
M$total.score <- 0.2*M$midterm + 0.6*M$final + 0.2*M$besttwo.sum/2
M$total.score <- 0.2*M$midterm + 0.6*M$final + 0.2*M$bestwo.sum/2
head(M)
#-- comopute means and sd
#of the ROWS of M
mean(M[,1])
mean(M[1,])
M[1,]
mean(M[1,])
apply(M,1,class)
apply(M,2,class)
M[,1]
M[1,]
sum(M[1,])
mean(M[1,])
#--- go back to the problem
#-- compute the mean scores by ROW
#best: apply
apply(M, 1, mean)
#compute mean scores by columns
apply(M,2,mean)
apply(M,2,sd)
apply(M,1,sd)
#--- in summary:
#mean by columns: apply(M,2,mean)
#mean by rows: apply(M,1,mean)
#sd by columns: apply(M,2,sd)
#sd by rows: apply(M,1,sd)
#--- plot total.score
hist(M$total.score)
?qqplot
qqpplot(M$total.score)
qqplot(M$total.score)
?qqplot
qqnorm(M$total.score)
#-- need to see if the points approximately follow the line with slope 1
?abline
abline(0,1,col="red")
?qqline
qqline()
qqline(M$total.score)
#-- thanks! It should be qqline, not abline for this case
#-- points hug the line pretty well
#yes: approx. normal.
#----------- Last part: compute letter grades
#--- this is really a recoding exercise
?quantile
quantile(M$total.score)
quantile(M$total.score, 0.95)
#the above is the 95th quantile score for my class
M$grade <- NA
M$grade[M$total.score >= quantile(M$total.score,0.95)] <- "A"
M$grade[M$total.score < quantile(M$total.score,0.95 & M$total.score >= quantile(M$total.score,0.8))] <- "B"
M$grade[M$total.score < quantile(M$total.score,0.8) & M$total.score >= quantile(M$total.score,0.5))] <- "C"
quantile(M$total.score, 0.8)
quantile(M$total.score, 0.5)
quantile(M$total.score, 0.3)
cut.off.A <- quantile(M$total.score,0.95)
cut.off.B <- quantile(M$total.score,0.8)
cut.off.C <- quantile(M$total.score,0.5)
cut.off.D <- quantile(M$total.score,0.3)
M$grade <- NA
M$grade[M$total.score >= cut.off.A] <- "A"
M$grade[M$total.score < cut.off.A & M$total.score >= cut.off.B] <- "B"
M$grade[M$total.score < cut.off.B & M$total.score >= cut.off.C] <- "C"
M$grade[M$total.score < cut.off.C & M$total.score >= cut.off.D] <- "D"
M$grade[M$total.score < cut.off.D] <- "F"
M$grade
head(M)
#---- this concludes the exercise.
#sample code to recode bedrooms: house$newbeds[house$bedrooms >= 5] <- "5 or more"
#exclude outliers
#--- example: say, I want to exclude the student with the highest final score
M[M$final == max(M$final),]
M2 = M[M$final != max(M$final),]
dim(M2)
dim(M)
savehistory("rlab-exercise1-solution.R")
?