ls()
x <- 8.14
x
y <- 8.0
y
typeof(x)
x = 1
typeof(x)
x=1.3467
typeof(x)
?double
z <- 8
z <- as.integer(z)
typeof(z)
class(z)
as.integer(8.1234)
round(8.1234)
as.integer(2^32)
?integer
z <- 1=1
z <- 1==1
x
1==1
shoes
shoes > 10
shoes$A > 10
shoes$A >= 10
shoes$A< 10
shoes$A[Shoes$A >A]
shoes$A[shoes$A >A]
shoes
shoes$A[Shoes$A > 10]
shoes$A[shoes$A > 10]
TRUE & TRUE
TRUE & FALSE
TRUE | FALSE
FALSE & FALSE
TRUE & (FALSE | (TRUE & FALSE))
TRUE & (FALSE | (TRUE))
TRUE & FALSE | TRUE
TRUE & FALSE & TRUE
x <- c(i9,166)
x <- c(9,166)
y <- (3 < x) & (x <= 10)
y
x
y <- (10 < x) & (x <= 10)
y
y <- (10 < x) & (x <= 166)
y
y <- (10 < x) & (x < 166)
y
y <- (10 < x) | (x < 166)
y
y <- (10 < x) , (x < 166)
x <- c("a","b","c","d")
x <- c("a","b","c","$")
x
typeof(x)
x <- as.factor(x)
sex <- x("male", "male", "female", "male", "female")
sex <- c("male", "male", "female", "male", "female")
sex
levels(sex)
sex <- factor(sex)
levels(sex)
?factor
is.factor(x)
sex
sex1 <- x("male", "male", "female", "male", "female")
sex1 <- c("male", "male", "female", "male", "female")
sex1 <- as.factor(sex1)
sex1
sex.numeric <- as.double(sex)
sex.numeric
is.na(sex.numeric)
sex.numeric[is.na(sex.numeric)]
10/0
is.na(10/0)
is.infinite(10/0)
x <- c(1,2,3,4)
x
x <- c(1:100)
x
sqrt(x)
x - x
x <- c(1:10)
x + 2
y <- c(1:10) -5
y
x
x * y
sum(x*y)
u <- seq(from = -3, to = 3, by = 0.5)
u
rep(1:4,4)
rep(1:4,1:4)
rep(1:4,5:8)
rep(1:4,4:0)
rep(1:4,0:4)
x <- rnorm(10)
x
x <- rnorm(10000)
x
host(x)
hist(x)
?runif
hist(rnorm(1000000))
y <- runif(10, 4, 7)
y
round(y)
x <- 1:8
x
dim(x) <- c(2,4)
x
typeof(x)
class(x)
cbind(c(1,2,3), c(4,5,6)
)
rbind(c(1,2,3), c(4,5,6))
x
rbind(x, c(5,6,7,8))
mtcars
names(mtcars)
x
names(x)
colnames(x)
colnames(mtcars)
rownames(matcars)
rownames(mtcars)
levels(mtcars$mpg)
sapply(mtcars,class)
y = x
mtcars
names(mtcars)
x
names(x)
colnames(x)
colnames(mtcars)
rownames(matcars)
rownames(mtcars)
x <- data.frame(x)
names(x)
names(x) <- c("var1","test2","test3","test4")
x
x <- 1:5
ls()
sex
ls(x,z)
list(x,z)
x1 <- 1:5
x2 <- c(T,F,T,F,T)
y <- list(numbers = x1, wrong = x2)
y
y$numbers
y2 <- list(x,z)
y2
y2[[1]]
x
x[c(1,4)]
x <- 5:10
x
x[c(1,4)]
x[x > 7]
#can change elements directly
x[1] <- 100
x
x[c(1,2)] <- c(99,92)
x
x[-1]
#subtracting the first element
x[-c(1,2,3)]
#subtract first 3
x
print*"x"
length(x)
min(x)
max(x)
mean(x)
sum(x)
sum(x)/length(x)
x
order(x)
x[order(x)]
sort(x)
min(x)
#to find the index of the minimum of x
order(x)[1]
1:length(x)
1:length(x)[order(x)==1]
(1:length(x))[order(x)==1]
length(x)
#---- matrix subscripts
mtcars
#select the first 5 cars
mtcars[1:5,]
mtcars[1:5,c(1,2,3)]
mtcars[mtcars$hp > 100,]
mtcars["Mazada RX4",]
mtcars["Mazda RX4",]
mtcars["Mazda RX4",c("hp","wt")]
new.cars <- cbind(cars, Max.Vel = maxvel)
new.cars <- cbind(cars, Max.Vel = cars$maxvel)
cars
#--- create a new variable in a dat aframe
mtcars
new.cars <- cbind(mtcars, MPG = mtcars$mpg)
new.cars
new.cars <- cbind(mtcars, MPG = mtcars$mpg > 10)
new.cars
?cbind
house <- read.csv("house.csv")
head(house)
# view the type of the imput dataframe
sapply(house,class)
# See summary of house in general
summary(house)
# use readr import house
# and make bathrooms, bedrooms, condition, floors, grade, view and waterfront to be categorical variables
library(readr)
house2 <- read_csv("house.csv", col_types = cols(bathrooms = col_factor(levels = c("0",
"0.5", "0.75", "1", "1.25", "1.5", "1.75",
"2", "2.25", "2.5", "2.75", "3", "3.25",
"3.5", "3.75", "4", "4.25", "4.5", "4.75",
"5", "5.25", "5.5", "5.75", "6", "6.25",
"6.5", "6.75", "7.5", "7.75",
"8")), bedrooms = col_factor(levels = c("0","1",
"2", "3", "4", "5", "6", "7","8","9","10","11","33")), condition = col_factor(levels = c("1",
"2", "3", "4", "5")), date = col_date(format = "%Y%m%dT000000"),
floors = col_factor(levels = c("1", "1.5",
"2", "2.5", "3", "3.5")), grade = col_factor(levels = c("1",
"3", "4", "5", "6", "7", "8", "9",
"10", "11", "12", "13")),
view = col_factor(levels = c("0", "1",
"2", "3", "4")), waterfront = col_factor(levels = c("0",
"1"))))
# View and make sure the type of the variable
head(house2)
sapply(house2,class)
# Since the levels are too much for viewing
# downsize the number of category of bedrooms, bathrooms, grade
# Bedrooms
house3 <- house
house3$date <- house2$date
house3$bedrooms[house3$bedrooms < 2] <- "1bed"
house3$bedrooms[house3$bedrooms < 4 & house3$bedrooms >= 2] <- "2~3beds"
house3$bedrooms[house3$bedrooms < 6 & house3$bedrooms >= 4] <- "4~5beds"
house3$bedrooms[house3$bedrooms >= 6] <- "6+beds"
house3$bedrooms <- as.factor(house3$bedrooms)
levels(house3$bedrooms) <- list("1bed"=c('1bed'),"2~3beds"=c('2~3beds'),"4~5beds"=c("4~5beds"),"6+beds"=c("6+beds","10","11"))
summary(house3$bedrooms)
# Bathroom
summary(house3$bathrooms)
house3$bathrooms[house3$bathrooms < 1] <- "0-1bath"
house3$bathrooms[house3$bathrooms >= 1 & house3$bathrooms < 2] <- "1-2bath"
house3$bathrooms[house3$bathrooms >= 2 & house3$bathrooms < 3] <- "2-3bath"
house3$bathrooms[house3$bathrooms >= 3 & house3$bathrooms < 4] <- "3-4bath"
house3$bathrooms[house3$bathrooms >= 4] <- "4+bath"
house3$bathrooms <- as.factor(house3$bathrooms)
# Grade
summary(house3$grade)
house3$grade[house3$grade <= 3] <- "3 or less"
house3$grade[house3$grade > 3 & house3$grade <= 5] <- "4 to 5"
house3$grade[house3$grade > 5 & house3$grade <= 7] <- "6 to 7"
house3$grade[house3$grade > 7 & house3$grade <= 9] <- "8 to 9"
house3$grade[house3$grade >  9] <- "10 or more"
house3$grade <- as.factor(house3$grade)
summary(house3$grade)
levels(house3$grade) <- list("5 or less" =c("4 to 5"), "6 to 7" =c("6 to 7"), "8 to 9"=c("8 to 9"), "10 or more" =c("10","11","12","13"))
summary(house3$grade)
setwd("~/Documents/!!!Study/!!!COLLEGE/2017 Fall/M 358K/finalProject")
house <- read.csv("house.csv")
head(house)
# view the type of the imput dataframe
sapply(house,class)
# See summary of house in general
summary(house)
# use readr import house
# and make bathrooms, bedrooms, condition, floors, grade, view and waterfront to be categorical variables
library(readr)
house2 <- read_csv("house.csv", col_types = cols(bathrooms = col_factor(levels = c("0",
"0.5", "0.75", "1", "1.25", "1.5", "1.75",
"2", "2.25", "2.5", "2.75", "3", "3.25",
"3.5", "3.75", "4", "4.25", "4.5", "4.75",
"5", "5.25", "5.5", "5.75", "6", "6.25",
"6.5", "6.75", "7.5", "7.75",
"8")), bedrooms = col_factor(levels = c("0","1",
"2", "3", "4", "5", "6", "7","8","9","10","11","33")), condition = col_factor(levels = c("1",
"2", "3", "4", "5")), date = col_date(format = "%Y%m%dT000000"),
floors = col_factor(levels = c("1", "1.5",
"2", "2.5", "3", "3.5")), grade = col_factor(levels = c("1",
"3", "4", "5", "6", "7", "8", "9",
"10", "11", "12", "13")),
view = col_factor(levels = c("0", "1",
"2", "3", "4")), waterfront = col_factor(levels = c("0",
"1"))))
# View and make sure the type of the variable
head(house2)
sapply(house2,class)
# Since the levels are too much for viewing
# downsize the number of category of bedrooms, bathrooms, grade
# Bedrooms
house3 <- house
house3$date <- house2$date
house3$bedrooms[house3$bedrooms < 2] <- "1bed"
house3$bedrooms[house3$bedrooms < 4 & house3$bedrooms >= 2] <- "2~3beds"
house3$bedrooms[house3$bedrooms < 6 & house3$bedrooms >= 4] <- "4~5beds"
house3$bedrooms[house3$bedrooms >= 6] <- "6+beds"
house3$bedrooms <- as.factor(house3$bedrooms)
levels(house3$bedrooms) <- list("1bed"=c('1bed'),"2~3beds"=c('2~3beds'),"4~5beds"=c("4~5beds"),"6+beds"=c("6+beds","10","11"))
summary(house3$bedrooms)
# Bathroom
summary(house3$bathrooms)
house3$bathrooms[house3$bathrooms < 1] <- "0-1bath"
house3$bathrooms[house3$bathrooms >= 1 & house3$bathrooms < 2] <- "1-2bath"
house3$bathrooms[house3$bathrooms >= 2 & house3$bathrooms < 3] <- "2-3bath"
house3$bathrooms[house3$bathrooms >= 3 & house3$bathrooms < 4] <- "3-4bath"
house3$bathrooms[house3$bathrooms >= 4] <- "4+bath"
house3$bathrooms <- as.factor(house3$bathrooms)
# Grade
summary(house3$grade)
house3$grade[house3$grade <= 3] <- "3 or less"
house3$grade[house3$grade > 3 & house3$grade <= 5] <- "4 to 5"
house3$grade[house3$grade > 5 & house3$grade <= 7] <- "6 to 7"
house3$grade[house3$grade > 7 & house3$grade <= 9] <- "8 to 9"
house3$grade[house3$grade >  9] <- "10 or more"
house3$grade <- as.factor(house3$grade)
summary(house3$grade)
levels(house3$grade) <- list("5 or less" =c("4 to 5"), "6 to 7" =c("6 to 7"), "8 to 9"=c("8 to 9"), "10 or more" =c("10","11","12","13"))
summary(house3$grade)
## see mammal model last hw
model1 <- lm(TotalSleep ~ BodyWt + BrainWt + LifeSpan + Gestation + Predation + Exposure + Danger,data = mammals2)
summary(model1)
# Plot Diagnostic graphs
par(mfrow = c(2,2))
plot(model1)
library(openintro)
data(mammals)
model2 <- lm(TotalSleep ~ BodyWt + BrainWt + LifeSpan + Gestation + Predation + Exposure + Danger,data = mammals2.1)
summary(model2)
# Plot Diagnostic graphs
plot(model2)
mammals2 <- mammals[rowSums(is.na(mammals)) == 0,]
# see if all NA rows are excluded
head(mammals2)
# less obs. in mammals2, successfully exclude all NA rows
# check for variables' types before plotting
sapply(mammals2, class)
# all variables are nicely fall in each type
# all variable names are self-explanable, no need for renaming, just need to pay attention to the units in comprehension.
plot(mammals2)
# Show bad fit if include NonDreaming and Dreaming
modelbad0 <- lm(TotalSleep ~ NonDreaming + Dreaming, data = mammals2)
summary(modelbad0)
modelbad1 <- lm(TotalSleep ~ NonDreaming + Dreaming + LifeSpan, data = mammals2)
summary(modelbad1)
# Build model one with suggested variables
model1 <- lm(TotalSleep ~ BodyWt + BrainWt + LifeSpan + Gestation + Predation + Exposure + Danger,data = mammals2)
summary(model1)
# Plot Diagnostic graphs
par(mfrow = c(2,2))
plot(model1)
# To build model2, we need to convert Predation, Exposure and Danger to 'factor'
# Get ready to convert the type of the last three variables to be 'factor' - categorical
# Call new converted dataset mammals2.1
mammals2.1 <- mammals2
# Set convert function
convert <- function(obj,types){
for (i in 1:length(obj)){
FUN <- switch(types[i],character = as.character,
numeric = as.numeric,
factor = as.factor, date = as.Date, time = time)
obj[,i] <- FUN(obj[,i])
}
obj
}
# Set type of variable
numcol = dim(mammals2.1)[2]
type.target = rep("numeric", numcol)
type.target[c(1:numcol)[names(mammals2.1) == "Species"]] <- "factor"
type.target[c(1:numcol)[names(mammals2.1) == "Predation"]] <- "factor"
type.target[c(1:numcol)[names(mammals2.1) == "Exposure"]] <- "factor"
type.target[c(1:numcol)[names(mammals2.1) == "Danger"]] <- "factor"
cbind(names(mammals2.1), type.target)
mammals2.1 <- convert(mammals2.1, type.target)
# Check results of converting
sapply(mammals2.1,class)
# Finished converting the type
# see model 2 for regression
model2 <- lm(TotalSleep ~ BodyWt + BrainWt + LifeSpan + Gestation + Predation + Exposure + Danger,data = mammals2.1)
summary(model2)
# Plot Diagnostic graphs
plot(model2)
# Do variable selection with the stepAIC command
library(MASS)
model1.AIC <- stepAIC(model1)
model2.AIC <- stepAIC(model2)
# See result of selection
summary(model1.AIC)
summary(model2.AIC)
# Build model for bonus part
modelbonus <- lm(TotalSleep ~ I(BodyWt^-0.2) + I(BrainWt^-5) + I(log(LifeSpan)) + I(Gestation) + Predation + Danger, data = mammals2.1)
summary(modelbonus)
plot(modelbonus)
plot(model1)
mammals2[5,]
plot(model2)
mammals2.1[5,]
mammals2.1[8,]
mammals2.1[32,]
mammals2.1
savehistory("fp-code-draft120602.R")
