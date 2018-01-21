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
