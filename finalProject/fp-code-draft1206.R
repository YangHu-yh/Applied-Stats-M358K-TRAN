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
house2$bedrooms[levels = list(c["1"],c["2"],c["3"]]
house2$bedrooms[levels = list(c["1"],c["2"],c["3"])
]
house2$bedrooms
house2$bedrooms[levels(house2$bedrooms) = list(c["1"],c["2"],c["3"])
house2$bedrooms[levels(house2$bedrooms) == list(c["1"],c["2"],c["3"])
]
house2$bedrooms[levels(house2$bedrooms) == list("1")]
house2$bedrooms[levels(house2$bedrooms) == list("1","2","3")]
house2[bedrooms == "1"]
house2[house2$bedrooms == "1"]
house2[house2$bedrooms %in% c("1","2")]
house2[house2$bedrooms %in% c("1","2"),]
house2[house2$bedrooms %in% c("0","1"),]
summary(house2$bedrooms)
house2$bedroom <- house2[house2$bedrooms %in% c("0","1","2","3","4","5","6","7","8","9","10"),]
bedroom <- house2[house2$bedrooms %in% c("0","1","2","3","4","5","6","7","8","9","10"),]
View(bedroom)
sapply(house2,class)
cor(house2$sqft_above, house2$price)
house2[house2$sqft_basement %in% c("0")]
house2[house2$sqft_basement == 0]
house2$sqft_basement[house2$sqft_basement == 0]
basement <- house2$sqft_basement[house2$sqft_basement > 0]
house.withbasement <- house2[house2$sqft_basement > 0]
house.withbasement <- house2[house2$sqft_basement >= 40]
house.withbasement <- house2[house2$sqft_basement %in% >= 40]
house.withbasement <- house2[house2$sqft_basement %in% house2$sqft_basement>= 40]
house.withbasement <- house2[which(house2$sqft_basement >0),]
plot(house.withbasement$price, house.withbasement$sqft_basement)
cor(house.withbasement$price, house.withbasement$sqft_basement)
plot(house.withbasement$sqft_basement, house.withbasement$price)
summary(house2$price)
plot(summary(house2$price))
ggplot(house2, aes(x=price)) + geom_boxplot()
ggplot(house2, aes(x=price)) + geom_histogram()
ggplot(house2, aes(x=price)) + geom_histogram(bins = 500)
plot(house2$sqft_living15, house2$price)
cor(house$price,house$bedrooms)
cor(house$price,house2$bedrooms)
price(bedroom$bedrooms ~ bedroom$price)
summary(bedroom)
price(bedroom$bedrooms, bedroom$price)
plot(bedroom$bedrooms, bedroom$price)
levels(bedroom$bedrooms)
levels(bedroom$bedrooms) <- list("0", "1" , "2",  "3"  ,"4" , "5",  "6",  "7" , "8",  "9" , "10",)
levels(bedroom$bedrooms) <- list("0", "1" , "2",  "3"  ,"4" , "5",  "6",  "7" , "8",  "9" , "10")
levels(droplevels(bedroom$bedrooms))
plot(bedroom$bedrooms, bedroom$price)
plot(bedroom$bedrooms, bedroom$id)
plot(bedroom$bedrooms, bedroom$price)
ggplot(house2,aes(x = price, fill = bedrooms)) + geom_histogram(bins=300)
house3 <- house
house3$date <- house2$date
house3$bedrooms[house3$bedrooms <= 1] <- "1bed"
house3$bedrooms[house3$bedrooms < 2] <- "1bed"
house3$bedrooms[house3$bedrooms < 4 & house3$bedrooms >= 2] <- "2~3beds"
house3$bedrooms[house3$bedrooms < 6 & house3$bedrooms >= 4] <- "4~5beds"
house3$bedrooms[house3$bedrooms > 6] <- "6+beds"
ggplot(house3,aes(x=price, fill = bedrooms)) + geom_histogram(bins = 100)
summary(house3$bedrooms)
sapply(house3,class)
house3$bedrooms <- as.factor(house3$bedrooms)
sapply(house3,class)
ggplot(house3,aes(x=price, fill = bedrooms)) + geom_histogram(bins = 100)
house3$bedrooms[house3$bedrooms >= 6] <- "6+beds"
house3$bedrooms <- house$bedrooms
house3$bedrooms[house3$bedrooms < 2] <- "1bed"
house3$bedrooms[house3$bedrooms < 4 & house3$bedrooms >= 2] <- "2~3beds"
house3$bedrooms[house3$bedrooms < 6 & house3$bedrooms >= 4] <- "4~5beds"
house3$bedrooms[house3$bedrooms >= 6] <- "6+beds"
house3$bedrooms <- as.factor(house3$bedrroms)
summary(house3)
house3$bedrooms <- as.factor(house3$bedrooms)
ggplot(house3,aes(x=price, fill = bedrooms)) + geom_histogram(bins = 100)
summary(house3$bedrooms)
levels(house3$bedrooms) <- list("1bed"=c('1bed'),"2~3beds"=c('2~3beds'),"4~5beds"=c("4~5beds"),"6+beds"=c("6+beds","10","11"))
summary(house3$bedrooms)
ggplot(house3,aes(x=price, fill = bedrooms)) + geom_histogram(bins = 100)
ggplot(house3,aes(x=price, fill = bedrooms)) + geom_histogram(bins = 300)
summary(house3$bathrooms)
house3$bathrooms[house3$bathrooms < 1] <- "0-1bath"
house3$bathrooms[house3$bathrooms >= 1 & house3$bathrooms < 2] <- "1-2bath"
house3$bathrooms[house3$bathrooms >= 2 & house3$bathrooms < 3] <- "2-3bath"
house3$bathrooms[house3$bathrooms >= 3 & house3$bathrooms < 4] <- "3-4bath"
house3$bathrooms[house3$bathrooms >= 4] <- "4+bath"
house3$bathrooms <- as.factor(house3$bathrooms)
ggplot(house3,aes(x=price, fill = bathrooms)) + geom_histogram(bins = 300)
ggplot(house3,aes(x = bathrooms, y = price)) + geom_boxplot()
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
ggplot(house3,aes(x=price, fill = grade)) + geom_histogram(bins = 300)
ggplot(house3,aes(x = grade, y = price)) + geom_boxplot()
pricem <- lm(price ~ bathrooms + bedrooms + grade + sqrt_living + sqrt_living15, data = house3)
sapply(house3,class)
pricem <- lm(price ~ bathrooms + bedrooms + grade + sqft_living + sqrt_living15, data = house3)
summary(house3)
pricem <- lm(price ~ bathrooms + bedrooms + grade + sqft_living + sqft_living15, data = house3)
summary(pricem)
pricem <- lm(price ~ bathrooms + bedrooms + grade + sqft_living + sqft_living15, data = house2)
summary(pricem)
savehistory("fp-code-draftat20171205.R")
price.in3 <- lm(price ~ bedrooms*bathrooms*grade*view + log(sqft_living) + sqft_above + sqft_basement, data = house)
summary(price.in3)
plot(price.in3)
summary(price.in3)
plot(price.in3)
par(mfrow = c(2,2))
plot(price.in3)
library(ggplot2)
library(vcd)
plot(price.in3)
dev.off()
plot(price.in3)
dev.off()
price.in2 <- lm(price ~ bedrooms + bathrooms + grade +view + log(sqft_living) + sqft_above + sqft_basement, data = house)
summary(price.in2)
plot(price.in2)
price.in3 <- lm(price ~ bedrooms*bathrooms*grade*view + log(sqft_living) + sqft_above + sqft_basement, data = house3)
summary(price.in3)
price.in3 <- lm(price ~ bedrooms*bathrooms + grade*view + log(sqft_living) + sqft_above + sqft_basement, data = house3)
summary(price.in3)
price.in3 <- lm(price ~ bedrooms*bathrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house3)
summary(price.in3)
price.in3 <- lm(price ~ bedrooms*bathrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house)
summary(price.in3)
price.in3 <- lm(price ~ bedrooms+bathrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house)
summary(price.in3)
price.in3 <- lm(price ~ bedrooms+bathrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house3)
summary(price.in3)
price.in3 <- lm(price ~ bedrooms + bathrooms + grade + view + log(sqft_living) + log(sqft_above) + sqft_basement, data = house)
summary(price.in3)
price.in3 <- lm(price ~ bedrooms + bathrooms + grade + view + log(sqft_living) + sqft_above^0.5 + sqft_basement, data = house)
price.in3 <- lm(price ~ bedrooms + bathrooms + grade + view + log(sqft_living) + sqft_above^2 + sqft_basement, data = house)
price.in3 <- lm(price ~ bedrooms + bathrooms + grade + view + log(sqft_living) + sqft_above^0.5 + sqft_basement, data = house)
summary(price.in3)
price.in3 <- lm(price ~ bedrooms+bathrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house3)
summary(price.in3)
price.in3 <- lm(price ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house)
summary(price.in3)
plot(price.in3)
price.in3 <- lm(price ~ bedrooms+bathrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house3)
summary(price.in3)
price.in3 <- lm(price ~ bedrooms+bathrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house)
summary(price.in3)
plot(price.in3)
par(mfrow = c(2,2))
plot(price.in3)
savehistory("fp-code-draft1206.R")


library(R.utils)
library(rstan)
install.packages("rstan")
library(manipulate)
install.packages("manipulate")
p <- seq(from=0.005, to=0.995, by=0.005)
install.packages("rstan")
install.packages("manipulate")
p
plot(p)
?confidence
??confidence
?prop.test
1500*0.45
prop.test(n = 1500, p = 0.45)
?sd
p = 0.45
n = 1500
sqrt(p*(p-1)/n)
sqrt(p*(1-p)/n)
sd = sqrt(p*(1-p)/n)
pl = p-2*sd
ph = p+2*sd
pl
ph
phat = 0.5
p0 = 0.45
n = 1500
z = (phat - p0)/sqrt(p0*(1-p0)/n)
z
pnorm(z)
1-pnorm(-z)
cor(house$bedrooms, house$bathrooms)
cor(house$bedrooms, house$view)
cor(house$bedrooms, house$grade)
cor(house$bedrooms, house$sqft_above)
cor(house$bedrooms, house$sqft_living)
cor(house$bedrooms, house$sqft_basement)
plot(house$bedrooms, house$bathrooms)
par(mfrow = c(1.1))
plot(house$bedrooms, house$bathrooms)
par(mfrow = c(1,1))
plot(house$bedrooms, house$bathrooms)
plot(house$bedrooms, house$sqft_living)
plot(house$bedrooms, house$sqft_living15)
cor(house$bedrooms, house$sqft_living15)
cor(house$bedrooms, house$sqft_lot)
cor(house$grade, house$sqft_lot)
cor(house$grade, house$sqft_living)
plot(house$grade, house$sqft_living)
cor(house$view, house$sqft_living)
cor(house$bathrooms, house$sqft_living)
plot(house$bathrooms, house$sqft_living)
cor(house$bathrooms, house$view)
cor(house$bathrooms, house$grade)
cor(house$bedrooms, house$grade)
savehistory("fp-code-draft1212.R")









