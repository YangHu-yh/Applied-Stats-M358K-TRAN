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
select3 <- houses$price >= 6885000
select3 <- house$price >= 6885000
price.select <- lm(price ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select)
par(mfrow = c(2,2))
plot(price.select)
price.select.log <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select)
plot(price.select.log)
house[15871,]
price.log <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house)
summary(price.log)
plot(price.log)
select3 <- houses$bedrooms >= 33
select3 <- house$bedrooms >= 33
select3 <- house$bedrooms >= 33 & house$price >= 6885000
summary(select3)
select3 <- (house$bedrooms >= 33 & house$price >= 6885000)
summary(select3)
select3 <- (house$bedrooms >= 33 | house$price >= 6885000)
summary(select3)
house[12778,]
summary(sqft_living)
summary(house$sqft_living)
summary(house$sqft_lot)
select3 <- (house$bedrooms >= 33 | house$price >= 6885000 | house$sqft_living == 13540)
summary(select3)
price.select.log <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select.log)
price.select.log <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house)
summary(price.select.log)
plot(price.select.log)
price.select.log <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select.log)
plot(price.select.log)
price.select <- lm(price ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select)
plot(price.select)
savehistory("fp-code-draft-select outliers1206")
savehistory("fp-code-draft-select outliers1206.R")
