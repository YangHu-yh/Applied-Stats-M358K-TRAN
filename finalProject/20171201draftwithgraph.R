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
+     "5.00", "5.25", "5.50", "5.75", "6.00", "6.25",
+     "6.50", "6.75", "7.50", "7.75",
+     "8.00")), bedrooms = col_factor(levels = c("1",
+     "2", "3", "4", "5", "6", "7","8","9","10","11","33")), condition = col_factor(levels = c("1",
+     "2", "3", "4", "5")), date = col_date(format = "%Y%m%dT000000"),
+     floors = col_factor(levels = c("1", "1.5",
+         "2", "2.5", "3", "3.5")), grade = col_factor(levels = c("1",
+         "3", "4", "5", "6", "7", "8", "9",
+         "10", "11", "12", "13")), price = col_number(),
+     view = col_factor(levels = c("0", "1",
+         "2", "3", "4")), waterfront = col_factor(levels = c("0",
+         "1"))))
library(readr)
house <- read_csv("house.csv", col_types = cols(bathrooms = col_factor(levels = c("0",
"0.50", "0.75", "1.00", "1.25", "1.50", "1.75",
"2.00", "2.25", "2.50", "2.75", "3.00", "3.25",
"3.50", "3.75", "4.00", "4.25", "4.50", "4.75",
"5.00", "5.25", "5.50", "5.75", "6.00", "6.25",
"6.50", "6.75", "7.50", "7.75",
"8.00")), bedrooms = col_factor(levels = c("1",
"2", "3", "4", "5", "6", "7","8","9","10","11","33")), condition = col_factor(levels = c("1",
"2", "3", "4", "5")), date = col_date(format = "%Y%m%dT000000"),
floors = col_factor(levels = c("1", "1.5",
"2", "2.5", "3", "3.5")), grade = col_factor(levels = c("1",
"3", "4", "5", "6", "7", "8", "9",
"10", "11", "12", "13")), price = col_number(),
view = col_factor(levels = c("0", "1",
"2", "3", "4")), waterfront = col_factor(levels = c("0",
"1"))))
View(house)
library(readr)
house <- read_csv("house.csv", col_types = cols(bathrooms = col_factor(levels = c("0",
"0.5", "0.75", "1", "1.25", "1.5", "1.75",
"2", "2.25", "2.5", "2.75", "3", "3.25",
"3.5", "3.75", "4", "4.25", "4.5", "4.75",
"5", "5.25", "5.5", "5.75", "6", "6.25",
"6.5", "6.75", "7.5", "7.75",
"8")), bedrooms = col_factor(levels = c("1",
"2", "3", "4", "5", "6", "7","8","9","10","11","33")), condition = col_factor(levels = c("1",
"2", "3", "4", "5")), date = col_date(format = "%Y%m%dT000000"),
floors = col_factor(levels = c("1", "1.5",
"2", "2.5", "3", "3.5")), grade = col_factor(levels = c("1",
"3", "4", "5", "6", "7", "8", "9",
"10", "11", "12", "13")), price = col_number(),
view = col_factor(levels = c("0", "1",
"2", "3", "4")), waterfront = col_factor(levels = c("0",
"1"))))
house <- read.csv("house.csv")
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
"10", "11", "12", "13")), price = col_number(),
view = col_factor(levels = c("0", "1",
"2", "3", "4")), waterfront = col_factor(levels = c("0",
"1"))))
sapply(house2,class)
cor(house$id, house2$price)
cor(house$price,house2$bedrooms)
plot(house2$bedrooms, house2$price)
View(house2)
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
"10", "11", "12", "13")), price = col_integer(),
view = col_factor(levels = c("0", "1",
"2", "3", "4")), waterfront = col_factor(levels = c("0",
"1"))))
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
View(house2)
sapply(house2,class)
plot(house2$bedrooms, house2$price)
library(ggplot2)
library(vcd)
ggplot(house2,aes(x=price,fill=bathrooms)) + geom_histogram()
ggplot(house2,aes(x=price,fill=bathrooms)) + geom_histogram(bins = 10)
ggplot(house2,aes(x=price,fill=bathrooms)) + geom_histogram(bins = 5)
ggplot(house2,aes(x=price,fill=bathrooms)) + geom_histogram(bins = 50)
# need to narrow down the categories
plot(house2$price, house2$sqft_living)
plot(house2$price, house2$sqft_living15)
ggplot(house2,aes(x=price,fill=grade)) + geom_histogram(bins = 50)
ggplot(house2,aes(x=price,fill=grade)) + geom_histogram(bins = 100)
ggplot(house2,aes(x=price,fill=grade)) + geom_histogram(bins = 1000)
# just trying lol
ggplot(house2,aes(x=grade, y=price)) + geom_boxplot()
ggplot(house2,aes(x=bedrooms, y=price)) + geom_boxplot()
ggplot(house2,aes(x=bathrooms, y=price)) + geom_boxplot()
ggplot(house2,aes(x=view, y=price)) + geom_boxplot()
plot(house2$sqft_basement, house2$price)
plot(house2$lat, house2$price)
pdf("nameofthedocument.jpg")
plot(x~y)
plot(...
dev.off()
plot(house2$long, house2$price)
savehistory("20171201draftwithgraph.R")
setwd("~/Documents/!!!Study/!!!COLLEGE/2017 Fall/M 358K/finalProject")
library(readr)
house <- read_csv("house.csv", col_types = cols(bathrooms = col_factor(levels = c("0",
"0.25", "0.5", "0.75", "1", "1.25", "1.5",
"1.75", "2", "2.25", "2.5", "2.75", "3",
"3.25", "3.5", "3.75", "4", "4.25", "4.5",
"4.75", "5")), bedrooms = col_factor(levels = c("1",
"2", "3", "4", "5", "6", "7")), date = col_date(format = "%Y%m%dT000000"),
view = col_factor(levels = c("0","1", "2",
"3", "4"))))
View(house)
library(readr)
house <- read_csv("house.csv", col_types = cols(bathrooms = col_factor(levels = c("0",
"0.5", "0.75", "1", "1.25", "1.5", "1.75",
"2", "2.25", "2.5", "2.75", "3", "3.25",
"3.5", "3.75", "4", "4.25", "4.5", "4.75",
"5", "5.25", "5.5", "5.75", "6", "6.25",
"6.5", "6.75", "7", "7.25", "7.5", "7.75",
"8", "8.25", "8.5", "8.75", "9")), bedrooms = col_factor(levels = c("1",
"2", "3", "4", "5", "6", "7")), condition = col_factor(levels = c("1",
"2", "3", "4", "5")), date = col_date(format = "%Y%m%dT000000"),
floors = col_factor(levels = c("1", "1.5",
"2", "2.5", "3", "3.5")), grade = col_factor(levels = c("1",
"3", "4", "5", "6", "7", "8", "9",
"10", "11", "12", "13")), price = col_number(),
view = col_factor(levels = c("0", "1",
"2", "3", "4")), waterfront = col_factor(levels = c("0",
"1"))))
View(house)
problems(...)
library(readr)
house <- read_csv("house.csv")
View(house)
library(readr)
house <- read_csv("house.csv", col_types = cols(bathrooms = col_factor(levels = c("0",
+     "0.50", "0.75", "1.00", "1.25", "1.50", "1.75",
+     "2.00", "2.25", "2.50", "2.75", "3.00", "3.25",
+     "3.50", "3.75", "4.00", "4.25", "4.50", "4.75",
+     "5.00", "5.25", "5.50", "5.75", "6.00", "6.25",
+     "6.50", "6.75", "7.50", "7.75",
+     "8.00")), bedrooms = col_factor(levels = c("1",
+     "2", "3", "4", "5", "6", "7","8","9","10","11","33")), condition = col_factor(levels = c("1",
+     "2", "3", "4", "5")), date = col_date(format = "%Y%m%dT000000"),
+     floors = col_factor(levels = c("1", "1.5",
+         "2", "2.5", "3", "3.5")), grade = col_factor(levels = c("1",
+         "3", "4", "5", "6", "7", "8", "9",
+         "10", "11", "12", "13")), price = col_number(),
+     view = col_factor(levels = c("0", "1",
+         "2", "3", "4")), waterfront = col_factor(levels = c("0",
+         "1"))))
library(readr)
house <- read_csv("house.csv", col_types = cols(bathrooms = col_factor(levels = c("0",
"0.50", "0.75", "1.00", "1.25", "1.50", "1.75",
"2.00", "2.25", "2.50", "2.75", "3.00", "3.25",
"3.50", "3.75", "4.00", "4.25", "4.50", "4.75",
"5.00", "5.25", "5.50", "5.75", "6.00", "6.25",
"6.50", "6.75", "7.50", "7.75",
"8.00")), bedrooms = col_factor(levels = c("1",
"2", "3", "4", "5", "6", "7","8","9","10","11","33")), condition = col_factor(levels = c("1",
"2", "3", "4", "5")), date = col_date(format = "%Y%m%dT000000"),
floors = col_factor(levels = c("1", "1.5",
"2", "2.5", "3", "3.5")), grade = col_factor(levels = c("1",
"3", "4", "5", "6", "7", "8", "9",
"10", "11", "12", "13")), price = col_number(),
view = col_factor(levels = c("0", "1",
"2", "3", "4")), waterfront = col_factor(levels = c("0",
"1"))))
View(house)
library(readr)
house <- read_csv("house.csv", col_types = cols(bathrooms = col_factor(levels = c("0",
"0.5", "0.75", "1", "1.25", "1.5", "1.75",
"2", "2.25", "2.5", "2.75", "3", "3.25",
"3.5", "3.75", "4", "4.25", "4.5", "4.75",
"5", "5.25", "5.5", "5.75", "6", "6.25",
"6.5", "6.75", "7.5", "7.75",
"8")), bedrooms = col_factor(levels = c("1",
"2", "3", "4", "5", "6", "7","8","9","10","11","33")), condition = col_factor(levels = c("1",
"2", "3", "4", "5")), date = col_date(format = "%Y%m%dT000000"),
floors = col_factor(levels = c("1", "1.5",
"2", "2.5", "3", "3.5")), grade = col_factor(levels = c("1",
"3", "4", "5", "6", "7", "8", "9",
"10", "11", "12", "13")), price = col_number(),
view = col_factor(levels = c("0", "1",
"2", "3", "4")), waterfront = col_factor(levels = c("0",
"1"))))
house <- read.csv("house.csv")
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
"10", "11", "12", "13")), price = col_number(),
view = col_factor(levels = c("0", "1",
"2", "3", "4")), waterfront = col_factor(levels = c("0",
"1"))))
sapply(house2,class)
cor(house$id, house2$price)
cor(house$price,house2$bedrooms)
plot(house2$bedrooms, house2$price)
View(house2)
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
"10", "11", "12", "13")), price = col_integer(),
view = col_factor(levels = c("0", "1",
"2", "3", "4")), waterfront = col_factor(levels = c("0",
"1"))))
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
View(house2)
sapply(house2,class)
plot(house2$bedrooms, house2$price)
library(ggplot2)
library(vcd)
ggplot(house2,aes(x=price,fill=bathrooms)) + geom_histogram()
ggplot(house2,aes(x=price,fill=bathrooms)) + geom_histogram(bins = 10)
ggplot(house2,aes(x=price,fill=bathrooms)) + geom_histogram(bins = 5)
ggplot(house2,aes(x=price,fill=bathrooms)) + geom_histogram(bins = 50)
# need to narrow down the categories
plot(house2$price, house2$sqft_living)
plot(house2$price, house2$sqft_living15)
ggplot(house2,aes(x=price,fill=grade)) + geom_histogram(bins = 50)
ggplot(house2,aes(x=price,fill=grade)) + geom_histogram(bins = 100)
ggplot(house2,aes(x=price,fill=grade)) + geom_histogram(bins = 1000)
# just trying lol
ggplot(house2,aes(x=grade, y=price)) + geom_boxplot()
ggplot(house2,aes(x=bedrooms, y=price)) + geom_boxplot()
ggplot(house2,aes(x=bathrooms, y=price)) + geom_boxplot()
ggplot(house2,aes(x=view, y=price)) + geom_boxplot()
plot(house2$sqft_basement, house2$price)
plot(house2$lat, house2$price)
pdf("nameofthedocument.jpg")
plot(x~y)
plot(...
dev.off()
plot(house2$long, house2$price)
savehistory("20171201draftwithgraph.R")
