print("Hello")
#R functions as a calculator
1 + sin(9)
sqrt(3)
(1+0.2)^8
log(2)
x = sin(9)/75
x
X
m <- matrix(c(1,2,3,4),ncol = 2)
m
solve(m)
#this above is the inverse of the matrix m
ls()
m
x
x2 = 00
x3 = 9
x4 = 10
ls()
ls(pattern="x")
#only display variables whose names start with x
help(mean)
?mean
??mean
??aic
#save the current variables to the working directory
save.image()
getwd()
library(MASS)
#libraries come with built in datasets
shoes
library()
#install more packages: install.packages("package_name")
mean = 10
mean
conflicts()
#to remove all objects in workspace
rm(list = ls())
x = 10
ls()
#just remove x alone
rm("x")
ls()
#--------- chapter 2
#--- data objects
#-- data types in R
#doubles
x <- 8.14
y <- 8.0
x
y
#doubles = real numbers
typeof(x)
class(x)
typeof(y)
z <- 8
typeof(z)
#-- logicals
1 == 1
1 == 2
#integers
z
z <- as.integer(z)
typeof(z)
class(z)
as.integer(8.1234)
round(8.1234)
as.integer(2^32)
#-- complex numbers
#-- see section 2.1.3
#-- logicals: very useful when you subset of datasets
x <- 1 == 1
x
shoes
shoes > 10
shoes$A > 10
#can use this to select a subset
shoes$A[shoes$A > 10]
#this will print out all shoes where shoes$A > 10 == TRUE
#can compose logicals
TRUE & TRUE
TRUE & FALSE
TRUE | FALSE
FALSE & FALSE
x <- c(9,166)
y <- (3 < x) & (x <= 10)
y
shoes$A[shoes$A > 15 | shoes$A < 8]
shoes$A[shoes$A > 10 | shoes$A < 8]
#--- characater
x <- c("a", "b","c","$")
x
typeof(x)
#--- most useful with characters: turn it into factors
x <- as.factor(x)
x
#example on factor: 2.1.6
sex <- c("male", "male", "female", "male", "female")
sex
typeof(sex)
sex <- factor(sex)
sex
levels(sex)
sex <- c(1,1,2,1,2)
typeof(sex)
sex <- factor(sex)
sex
sex + 8
#cannot add because this is a factor (not a double)
sex.numeric <- as.double(sex)
#turn this back into numerics
sex.numeric
sex.numeric + 8
#can now add.
#--- Missing data
sex.numeric
is.na(sex.numeric)
sex.numeric <- c(NA, NA, 1,2,3)
sex.numeric
is.na(sex.numeric)
#select a subset of NON-missing values in sex.numeric
sex.numeric[!is.na(sex.numeric)]
#--- NA is different from infinity
10/0
is.na(10/0)
is.infinite(10/0)
#--- data structures
#vectors
x <- c(1,2,3,4)
x
#short cut for create a large range of numbers
x <- c(1:100)
x
sqrt(x)
x-x
#-- table of functions: page 29. Useful for transformations of variables
x <- c(1:10)
x
x + 2
y <- c(1:10) - 5
x
y
x*y
sum(x*y)
#generate a sequence with specified step size
u <- seq(from = -3, to = 3, by = 0.5)
u
#-- another useful command: repeat
rep(1:4,4)
rep(1:4,1:4)
rep(1:4,5:8)
#--- generate random numbers according to a particular distribution
x <- rnorm(10)
?rnorm
x
hist(x)
x <- rnorm(100)
hist(x)
x <- rnorm(10000)
hist(x)
?runif
?runif
y <- runif(10, 4, 7)
y
round(y)
#--- matrices
x <- 1:8
x
dim(x) <- c(2,4)
x
typeof(x)
class(x)
#--- useful matrix operations: rbind, cbind
#allow you to concatenate matrices to make bigger ones
cbind(c(1,2,3), c(4,5,6)
)
rbind(c(1,2,3), c(4,5,6))
x
rbind(x, c(5,6,7,8))
#--- arrays
#matrices of higher dimensions
#(skip)
#---- data frames
#data frames = matrix with variable names
#any dataset should be a data frame
mtcars
names(mtcars)
x
names(x)
colnames(x)
colnames(mtcars)
rownames(matcars)
rownames(mtcars)
#--- create a data frame
data.frame(x)
x <- data.frame(x)
names(x)
names(x) <- c("var1","test2","test3","test4")
x
#--- last: list
#--- list = like a vector, but the elments can be of different types
#usual list in programing languages
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
#------ section 4: data manipulation
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
x
x[-1]
#subtracting the first element
x[-c(1,2,3)]
#subtract first 3
x
#useful functions
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
#very useful for transformation and regression!
#--- Done with basics on vectors, arrays, matrices, dataframes etc
save.history("lecture11-28.R")
save("lecture11-28.R")
savehistory("lecture11-28.R")
