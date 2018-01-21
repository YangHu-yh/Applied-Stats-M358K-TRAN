# Clear previous history
rm(list = ls())
# Import directly from csv
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
# Other variables move from house2
house3$view <- house2$view
house3$condition <- house2$condition
house3$waterfront <- house2$waterfront
house3$floors <- house2$floors
# Plot uninteresting variables VS PRICE
# ID
plot(house2$price ~ house2$id)
# Cor
cor(house$price,house$id)
# DATE
plot(house2$price ~ house2$date)
# Cor
cor(house$price,house$date)
# SQFT_LOT
plot(house2$price ~ house2$sqft_lot)
# Cor
cor(house$price,house$sqft_lot)
# FLOORS
ggplot(house2, aes(x=floors, y=price)) + geom_boxplot()
# Cor
cor(house$price,house$floors)
# CONDITION
ggplot(house2, aes(x=condition, y=price)) + geom_boxplot()
# Cor
cor(house$price,house$condition)
# WATERFRONT
ggplot(house2, aes(x=waterfront, y=price)) + geom_boxplot()
# Cor
cor(house$price,house$waterfront)
# YR_BUILT
plot(house2$price ~ house2$yr_built)
# Cor
cor(house$price,house$yr_built)
# YR_RENOVATED
plot(house2$price ~ house2$yr_renovated)
# Cor
cor(house$price,house$yr_renovated)
# ZIPCODE
plot(house2$price ~ house2$zipcode)
# Cor
cor(house$price,house$zipcode)
# LATITUE
plot(house2$price ~ house2$lat)
# Cor
cor(house$price,house$lat)
# LONGTITUTE
plot(house2$price ~ house2$long)
# Cor
cor(house$price,house$long)
summary(house$id)
sapply(house$date)
sapply(house$date,levels)
sapply(house,class)
sapply(house2,class)
cor(house$price,house2$date)
cor(house$price,house$floors)
ggplot(house2, aes(lat, long)) + geom_raster(aes(fill = price))
?geom_raster
ggplot(house2, aes(lat, long))
levels(house$lat)
sapply(house,class)
cor(house$price,house$condition)
cor(house$price,house$waterfront)
house2$zipcode_of_house <- as.factor(house2$zipcode)
ggplot(house2, aes(zipcode_of_house, price)) + geom_boxplot()
cor(house$price,house$yr_built)
house2$yr_built_of_house <- as.factorI(house2$yr_built)
cor(house$price,house$yr_renovated)
summary(house$price)
summary(house$yr_renovated)
?legend
?ggplot
summary(house2$zipcode_of_house)
mean(house2$zipcode_of_house)
mean(house2$zipcode_of_house[levels(house2$zipcode_of_house) == 98001])
mean(house2$zipcode_of_house[levels(house2$zipcode_of_house) == 98001,])
(house2$zipcode_of_house[levels(house2$zipcode_of_house) == 98001,])
house2$zipcode_of_house[levels(house2$zipcode_of_house) == 98001,]
house2$zipcode_of_house[levels(house2$zipcode_of_house) == 98001]
house2$zipcode_of_house[1,]
house2$zipcode_of_house[,1]
house2$zipcode_of_house[1]
house2$zipcode_of_house[4]
house2$zipcode_of_house[7]
house2$zipcode_of_house[8]
cor(house$price,house$yr_renovated)
house2$longitute <- as.factor(house2$long)
boxplot(house2$price ~ house2$longitute)
ggplot(house2, aes(price, longitute)) + geom_boxplot()
ggplot(house2, aes(x =longitute, y = price)) + geom_boxplot()
tail(sort(price.scaled),10)
price.scaled <- (log(houses$price) - mean(log(houses$price))/sd(log(houses$price)))
price.scaled <- (log(house$price) - mean(log(house$price))/sd(log(house$price)))
boxplot(price.scaled)
ps <- (log(houses$price) - mean(log(houses$price))
)
ps <- (log(house$price) - mean(log(house$price)))
boxplot(ps)
price.scaled <- (log(house$price) - mean(log(house$price))/sd(house$price))
boxplot(price.scaled)
summary(sd(house$price))
summary(log(sd(house$price))
)
price.scaled <- (log(house$price) - mean(log(house$price)))/sd(house$price))
price.scaled <- (log(house$price) - mean(log(house$price)))/sd(house$price)
boxplot(price.scaled)
price.scaled <- (log(house$price) - mean(log(house$price)))/sd(log(house$price)
)
boxplot(price.scaled)
summary(price.scales)
summary(price.scaled)
boxplot(price.scaled, title = "Boxplot of Price z-score")
?boxplot
boxplot(price.scaled, horizontal = "Boxplot of Price z-score")
boxplot(price.scaled, hnames = "Boxplot of Price z-score")
boxplot(price.scaled, names = "Boxplot of Price z-score")
boxplot(price.scaled, ylab = "Price z-score")
boxplot(price.scaled, xlab = "Price z-score")
boxplot(price.scaled, ylab = "Price z-score")
tail(sort(price.scaled),10)
tail(sort(house2$price),10)
summary(house2$price)
sapply(house2,levels)
price.select <- lm(price ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select)
plot(price.select)
select3 <- (house$bedrooms >= 33 | house$price >= 6885000 | house$sqft_living == 13540)
price.select <- lm(price ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select)
plot(price.select)
price.select.log <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select.log)
plot(price.select.log)
price.select.log <- lm(log(price) ~ bathrooms + bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select.log)
plot(price.select.log)
price.scaled <- (log(house$price) - mean(log(house$price)))/sd(log(house$price)
)
price.scaled <- (log(house$price) - mean(log(house$price)))/sd(log(house$price))
summary(price.scaled)
boxplot(price.scaled)
boxplot(price.scaled, ylab = "Price z-score")
tail(sort(price.scaled),10)
(house$bedrooms >= 33
)
price.all <- lm(price ~ id + date + bathrooms + bedrooms + grade +view + sqft_living + sqft_lot + floors + waterfront + condition + sqft_above + sqft_basement + yr_built + yr_renovated + zipcode + lat + long + sqft_lot15 + sqft_living15, data = house)
summary(price.all)
price.all3 <- lm(price ~ id + date + bathrooms + bedrooms + grade +view + sqft_living + sqft_lot + floors + waterfront + condition + sqft_above + sqft_basement + yr_built + yr_renovated + zipcode + lat + long + sqft_lot15 + sqft_living15, data = house3)
summary(price.all3)
price.all.AIC <- stepAIC(price.all)
library(MASS)
price.all.AIC <- stepAIC(price.all)
summary(price.all.AIC)
price.all3.AIC <- stepAIC(price.all3)
summary(price.all3.AIC)
savehistory("fp-code-draft1211.R")
