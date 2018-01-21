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
# Plot Interesting Variables
# Input libraries for plotting
library(ggplot2)
library(vcd)
# Plot bathroom vs price
ggplot(house2,aes(x=price, fill = bathrooms)) + geom_histogram(bins = 300)
ggplot(house2,aes(x = bathrooms, y = price)) + geom_boxplot()
# Compare with downsized categories
ggplot(house3,aes(x=price, fill = bathrooms)) + geom_histogram(bins = 300)
ggplot(house3,aes(x = bathrooms, y = price)) + geom_boxplot()
# Correlation value
cor(house$price,house$bathrooms)
# Plot grade vs price
ggplot(house2,aes(x=price,fill=grade)) + geom_histogram(bins = 100)
ggplot(house2,aes(x=grade, y=price)) + geom_boxplot()
# Compare with downsized categories
ggplot(house3,aes(x=price,fill=grade)) + geom_histogram(bins = 100)
ggplot(house3,aes(x=grade, y=price)) + geom_boxplot()
# Cor
cor(house$price,house$grade)
# Plot bedrooms vs price
ggplot(house2,aes(x = bedrooms, y = price)) + geom_boxplot()
# Compare with downsized categories
ggplot(house3,aes(x = bedrooms, y = price)) + geom_boxplot()
ggplot(house3,aes(x=grade, y=price)) + geom_boxplot()
# Cor
cor(house$price,house$bedrooms)
# Plot view vs Price
ggplot(house2,aes(x = view, y = price)) + geom_boxplot()
# Cor
cor(house$price,house$view)
# Plot Sqft_living vs Price
plot(house2$sqft_living, house2$price)
# Cor
cor(house$price,house$sqft_living)
# Plot Sqft_living15 vs Price
plot(house2$sqft_living15, house2$price)
# Cor
cor(house$price,house$sqft_living15)
# Plot Sqft_above vs Price
plot(house$sqft_above, house2$price)
# Cor
cor(house$price,house$sqft_above)
# Plot sqft_basement vs Price
plot(house2$sqft_basement, house2$price)
# Cor
cor(house$price,house$sqft_basement)
# When eliminate house without basement (sqft_basement == 0)
house.withbasement <- house2[which(house2$sqft_basement >0),]
plot(house.withbasement$sqft_basement, house.withbasement$price)
# Cor
cor(house.withbasement$price, house.withbasement$sqft_basement)
# Plot uninteresting variables VS PRICE
# ID
plot(house2$price ~ house2$id)
# Cor
cor(house$price,house$id)
# DATE
plot(house2$price ~ house2$date)
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
# Outliers
# Scale the price by minus the mean and then divided by standard deviation
price.scaled <- (log(house$price) - mean(log(house$price)))/sd(log(house$price))
# Draw a boxplot to view
boxplot(price.scaled, ylab = "Price z-score")
# Find outliers in price
# View the last ten observation point prices
tail(sort(price.scaled),10)
# See the last three observation points are outliers
# View the actual number for the price
tail(sort(house2$price),10)
# select those three outliers
select1 <- house$price >= 6885000
# Select outliers in bedrooms, 33 is too large comparing to the rest, probably a typo
select2 <- house$bedrooms >= 33
# Select outliers by sqft_living, looks like the maximum one is too large compaing to the rest, and it also does not follow the trend, thus the price of it is also not representative
select3 <- house$sqft_living == 13540
# Select all three outliers above
select <- (house$bedrooms >= 33 | house$price >= 6885000 | house$sqft_living == 13540)
# Regression models with interesting variables
# Trial regarding all variables numeric
# Use house
price.select1 <- lm(price ~ bathrooms + bedrooms + grade + view + sqft_living + sqft_living15 + sqft_above + sqft_basement, data = house[!select,])
summary(price.select1)
par(mfrow = c(2,2))
plot(price.select1)
# Trial regarding some variables as categorical variables as the number naturally fall in to corresponding variables
# Use house2
price.select2 <- lm(price ~ bathrooms + bedrooms + grade + view + sqft_living + sqft_living15 + sqft_above + sqft_basement, data = house2[!select,])
summary(price.select2)
plot(price.select2)
# Trial regarding some variables as recoded
# Use house3
price.select3 <- lm(price ~ bathrooms + bedrooms + grade + view + sqft_living + sqft_living15 + sqft_above + sqft_basement, data = house3[!select,])
summary(price.select3)
plot(price.select3)
# Run regression with all variables available
# Use house and house3 for trials
price.all <- lm(price ~ id + date + bathrooms + bedrooms + grade +view + sqft_living + sqft_lot + floors + waterfront + condition + sqft_above + sqft_basement + yr_built + yr_renovated + zipcode + lat + long + sqft_lot15 + sqft_living15, data = house)
summary(price.all)
price.all3 <- lm(price ~ id + date + bathrooms + bedrooms + grade +view + sqft_living + sqft_lot + floors + waterfront + condition + sqft_above + sqft_basement + yr_built + yr_renovated + zipcode + lat + long + sqft_lot15 + sqft_living15, data = house3)
summary(price.all3)
# Use stepAIC() function to select variables
library(MASS)
price.all.AIC <- stepAIC(price.all)
summary(price.all.AIC)
price.all3.AIC <- stepAIC(price.all3)
summary(price.all3.AIC)
# Selected variables are:
# bathrooms, bedrooms, grade, view, sqft_living, sqft_lot, floors, waterfront, condition,
# sqft_above, yr_built, yr_renovated, zipcode, lat, long, sqft_lot15, sqft_living
# Find they include all interesting variables
# For simplicity, just use the interesting variables
# Try to improve result of regression
# For simplicity, sqft_living and sqft_living15 is similar, so eliminate sqft_living15
# Use log for sqft_living
price.select.logsl <- lm(price ~ bathrooms + bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(price.select.logsl)
# Use log for price
price.select.log <- lm(log(price) ~ bathrooms + bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(price.select.log)
plot(price.select.log)
# Plot of diagnostics is largely improved. Even though r-squared decrease a little... Keep the assupmtion is more important
# Try eliminate bathroom
price.select.log <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(price.select.log)
plot(price.select.log)
# R-sqared value improved
model.lm <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm)
# THE END
summary(log(house$price))
house$price[e^log(house$price) == house$price]
house$price[exp(log(house$price)) == house$price]
exp(log(house$price)) == house$price
?log
exo(1)
exp(1)
exp(0)
exp(log(house$price[1]))
house$price[1]
exp(log(house$price[2]))
house$price[2]
house$price[13]
exp(log(house$price[13]))
exp(log(house$price[62]))
house$price[62]
house$price == exp(log(house$price))
house$price[1] == exp(log(house$price[1]))
house$price[1]
exp(log(house$price[1]))
typeof(house$price[1])
typeof(exp(log(house$price[1])))
summary(log(house2$price))
house$price[1] == 221900
house$price[1] == round(exp(log(house$price[1])))
all.equal(house$price[1], exp(log(house$price[1])))
all.equal(house$price, exp(log(house$price)))
house$price == round(exp(log(house$price)))
price.select1
summary(price.select1)
summary(price.select.logsl)
model.lm <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + log(sqft_above) + sqft_basement, data = house[!select,])
summary(model.lm)
model.lm <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm)
model.lm2 <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + log2(sqft_above) + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + log10(sqft_above) + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above^0.5 + sqft_basement, data = house[!select,])
model.lm2 <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + logb(sqft_above) + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + log(sqft_basement), data = house[!select,])
model.lm2 <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + log(sqft_basement), data = house[!select & which(house2$sqft_basement >0),])
model.lm2 <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + log(sqft_basement), data = house[(!select & which(house2$sqft_basement >0)),])
model.lm2 <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + log(sqft_basement), data = house[(which(house2$sqft_basement >0)),])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ bedrooms^0.5 + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
model.lm2 <- lm(log(price) ~ bedrooms^2 + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^2) + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.2) + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.7) + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + I(grade^0.5) + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + I(grade^2) + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + I(log(grade)) + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + I(view^2) + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + I(log(view)) + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + I(log(view+1)) + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + I(log(view+5)) + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + I((view+5)^2) + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + I((view+5)^3) + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + I((view+5)^10) + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + I((view+5)^2.5) + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log10(sqft_living)) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log2(sqft_living)) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(logb(sqft_living)) + sqft_above + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + I(log(sqft_above)) + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above^2 + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + I(sqft_above^2) + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + I(sqft_above^0.5) + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + I(sqft_above^5) + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + I(sqft_above^2) + sqft_basement, data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above + sqft_basement, data = house[!select,])
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above^2 + I(log(sqft_basement)), data = house[!select,])
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above^2 + I(log(sqft_basement+1)), data = house[!select,])
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above^2 + I(log(sqft_basement)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + I(log(sqft_above+1)) + I(log(sqft_basement+1)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + I(log(sqft_above+5)) + I(log(sqft_basement+1)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + I(log(sqft_above+10)) + I(log(sqft_basement+1)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above+ I(log(sqft_basement+1)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above+ I(log(sqft_basement+5)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above+ I(log(sqft_basement+10)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above+ I(log(sqft_basement+100)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above+ I(log(sqft_basement+10)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + I(log(grade)) + view + I(log(sqft_living)) + sqft_above+ I(log(sqft_basement+10)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + I(log(grade+5)) + view + I(log(sqft_living)) + sqft_above+ I(log(sqft_basement+10)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + I(log(grade+100)) + view + I(log(sqft_living)) + sqft_above+ I(log(sqft_basement+10)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above+ I(log(sqft_basement+1000)), data = house[!select,])
summary(model.lm2)
model.lm2 <- lm(log(price) ~ I(bedrooms^0.5) + grade + view + I(log(sqft_living)) + sqft_above+ I(log(sqft_basement+10)), data = house[!select,])
summary(model.lm2)
plot(model.lm)
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
1-pnorm(-z)
pnorm(z)
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
