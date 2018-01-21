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
house3 <- house3
house3 <- house
house3$date <- house2$date
house3$bedrooms[house3$bedrooms]
summary(house2$bedrooms)
house3$bedrooms[house3$bedrooms>=0 & house3$bedrooms <= 1] <- "0-1bed"
house3$bedrooms <- house2$bedrooms
house3$bedrooms[house3$bedrooms>=0 & house3$bedrooms < 2] <- "0<bed<2"
house3$bedrooms[house3$bedrooms>=0 & house3$bedrooms < 2] <- "0~1bed"
house3$bedrooms <- house$bedrooms
house3$bedrooms[house3$bedrooms>=0 & house3$bedrooms < 2] <- "0~1bed"
house3$bedrooms[house3$bedrooms >= 2 & house3$bedrooms <= 3] <- "2~3bed"
house3$bedrooms[house3$bedrooms >= 4 & house3$bedrooms <= 5] <- "4~5bed"
house3$bedrooms[house3$bedrooms >= 6 <- "6+bed"
house3$bedrooms[house3$bedrooms >= 6] <- "6+bed"
house3$bedrooms <- house$bedrooms
house3$bedrooms[house3$bedrooms>=0 & house3$bedrooms < 2] <- "0~1bed"
house3$bedrooms[house3$bedrooms >= 2 & house3$bedrooms <= 3] <- "2~3bed"
house3$bedrooms[house3$bedrooms >= 4 & house3$bedrooms <= 5] <- "4~5bed"
house3$bedrooms[house3$bedrooms >= 6] <- "6+bed"
house3$bedrooms <- as.factor(house3$bedrooms)
ggplot(house3,aes(x = price, fill = bedrooms)) + geom_histogram(bins=300)
ggplot(house2,aes(x = price, fill = bedrooms)) + geom_histogram(bins=300)
plot(house2$price ~ house2$bedrooms)
# just use house2 = =
summary(house2)
sapply(house2f, class)
sapply(house2, class)
plot(house2$date ~ price)
plot(house2$date ~ house2$price)
plot(house2$bedrooms ~ house2$price)
ggplot(house2,aes(x = price, fill = bedrooms)) + geom_histogram(bins=300)
plot(house$bedrooms ~ house2$price)
plot(house$bathrooms ~ house2$price)
plot(house2$sqft_living ~ house2$price)
plot(house2$sqft_lot ~ house2$price)
plot(house2$price ~house$bedrooms)
plot(house2$price ~house$bathrooms)
plot(house2$price ~house$sqft_living)
plot(house2$price ~house$sqft_lot)
plot(house2$price ~house$floors)
ggplot(house2,aes(x = price, fill = floors)) + geom_histogram(bins=300)
ggplot(house2,aes(x = floors, y = price)) + geom_boxplot()
plot(house2$price ~house$waterfront)
ggplot(house2,aes(x = waterfront, y = price)) + geom_boxplot()
plot(house2$price ~house$condition)
ggplot(house2,aes(x = view, y = price)) + geom_boxplot()
ggplot(house2,aes(x = conditionCall(), y = price)) + geom_boxplot()
ggplot(house2,aes(x = condition, y = price)) + geom_boxplot()
ggplot(house2,aes(x = grade, y = price)) + geom_boxplot()
plot(house2$price ~house$sqft_above)
plot(house2$price ~house$sqft_basement)
plot(house2$price ~house$sqft_living)
plot(house2$price ~house$sqft_lot)
plot(house2$price ~house$sqft_lot15)
plot(house2$price ~house$yr_built)
plot(house$price ~house$yr_renovated)
plot(house$price ~house$zipcode)
plot(house$price ~house$lat)
plot(house$price ~house$long)
plot(house2$sqft_living ~house$sqft_living15)
plot(house2$sqft_lot ~house$sqft_lot15)
savehistory("fp-code-draft1204.R")
house2$yr_renovated[house2$yr_renovated = 0] <- NA
house2$yr_renovated[house2$yr_renovated <1500 0] <- NA
summary(house2$yr_renovated)
house2$yr_renovated[house2$yr_renovated <1500] <- NA
plot(house$price ~house$yr_renovated)
house2$yr_renovated[house2$yr_renovated = 0] <- NA
house2$yr_renovated[house2$yr_renovated <= 0] <- NA
plot(house$price ~house$yr_renovated)
summary(house2$yr_renovated)
house2$yr_renovated[house2$yr_renovated <= 0] <- NULL
house2$yr_renovated <- house$yr_renovated
summary(house2$yr_renovated)
ggplot(house2[which(df$prop>0),],aes(x=yr_renovated, y=price)) + geom_boxplot()
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price)) + geom_boxplot()
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price))
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price)) + barplot()
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price)) + geom_count()
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price)) + GeomSmooth
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price)) + geom_point()
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price)) + geom_pointrange()
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price)) + geom_dotplot()
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price)) + geom_hex()
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price)) + geom_qq()
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price)) + geom_blank()
ggplot(house2[which(house2$yr_renovated>0),],aes(x=yr_renovated, y=price)) + geom_count()
ggplot(house2,aes(x=bathrooms, y=price)) + geom_boxplot()
ggplot(house2,aes(x=bedrooms, y=price)) + geom_boxplot()
ggplot(house2,aes(x=bedrooms[bedrooms<=10], y=price)) + geom_boxplot()
ggplot(house2,aes(x=bedrooms[-"10","11"], y=price)) + geom_boxplot()
ggplot(house2,aes(x=bedrooms["10","11"], y=price)) + geom_boxplot()
ggplot(house2,aes(x=bedrooms[c(1,2,3,4,5,6,7)], y=price)) + geom_boxplot()
bedrooms[c(1,2,3,4,5,6,7)]
house$2bedrooms[c(1,2,3,4,5,6,7)]
house2$bedrooms[c(1,2,3,4,5,6,7)]
house2$bedrooms[levels = c[1,2,3,4,5,6,7,8]]
house2$bedrooms[levels = c["1","2","3"]]
savehistory("fp-code-draft1204.R")
