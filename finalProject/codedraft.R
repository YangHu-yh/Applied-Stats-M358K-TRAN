

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
# bedrooms+bathrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement










# Eliminating outliers as making regression

houses <- house
head(houses)
dim(houses)
dotchart(houses$price)
head(houses$price)
house$prices.100K <- house$prices/100000
houses$prices.100K <- houses$prices/100000
houses$price.100K <- houses$price/100000
dotchart(houses$price.100K)
house$prices.100K <- house$prices/100000
house$prices.100K <- house$prices
house$prices.100K <- house$prices/100000
houses$price.100K <- houses$price/100000
price.scaled <- (houses$price.100K - mean(houses$price.100K))/sd(houses$price.100K)
summary(price.scaled)
boxplot(houses$price.100K)
plot(log(houses$price))
dotchart(log(houses$price))
price.scaled <- (log(houses$price.100K) - mean(log(houses$price.100K))/sd(log(houses$price.100K))
summary(price.scaled)
price.scaled <- (log(houses$price.100K) - mean(log(houses$price.100K))/sd(log(houses$price.100K))
)
boxplot(price.scaled)
select <- houses$price.100k == min(houses$price.100k)
?max
select <- houses$price.100k == min(houses$price.100k)
min(houses$price.100k)
max(houses$price.100k)
summary(houses$price.100k)
summary(price.scaled)
select <- (houses$price-mean(houses$price))/sd（houses$price） == min(price.scaled)
select <- (houses$price-mean(houses$price))/sdhouses$price） == min(price.scaled)
select <- (houses$price-mean(houses$price))/sd(houses$price） == min(price.scaled)
select <- (houses$price-mean(houses$price))/sd(houses$price) == min(price.scaled)
houses$price[select,]
houses$price[,select]
select
select <- rowSums((houses$price-mean(houses$price))/sd(houses$price) == min(price.scaled))
select <- (houses$price-mean(houses$price))/sd(houses$price) == min(price.scaled)
dim(select)
length(select)
houses[,select]
length(select == TRUE)
length(select == FALSE)
houses[select,]
SUMMARY(select)
summary(select)
select <- (houses$price-mean(houses$price))/sd(houses$price) == min(price.scaled)*100000
summary(select)
price.scaled <- (log(houses$price.100K) - mean(log(houses$price.100K))/sd(log(houses$price.100K))
)
price.scaled <- (log(houses$price) - mean(log(houses$price))/sd(log(houses$price)))
boxplot(price.scaled)
price.scaled <- (log(houses$price) - mean(log(houses$price))/sd(log(houses$price)))/10
boxplot(price.scaled)
price.scaled <- (log(houses$price) - mean(log(houses$price))/sd(log(houses$price)))
boxplot(price.scaled)
boxplot(houses$price)
select <- price.scaled == min(price.scaled)
summary(select)
house[select,]
tail(sort(houses$price),5)
head(sort(houses$price),5)
head(sort(houses$price),10)
head(sort(price.scaled),10)
tail(sort(price.scaled),10)
# the few points apart from the majority is the three points scaled to be -9.028640 -9.003187 -8.916765
# Corresponding actual prices is 6885000 7062500 7700000
select these three and see its corresponding row with other variables
select3 <- houses$price >= 6885000
summary(select3)
houses[select,]
houses[select3,]
# try regression without these three and use log for price. See if different from not doing so
price.select.log <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select.log)
# all variables have small p-values but r is getting smaller
# See if this is the problem of log or those three
price.select.log <- lm(price ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select.log)
price.select.log <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house)
summary(price.select.log)
# Seems like without the three and not using log is the best fit
price.select.log <- lm(price ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
# Check for diagnals
plot(price.select.log)
# Same problems in the past...try to find why first
# Seems to be other outliers exists
# not ideal = =
# try if we have log for price
price.select <- lm(price ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select)
par(mfrow = c(2,2))
plot(price.select)
price.select.log <- lm(log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,])
summary(price.select)
plot(price.select.log)
# Actually much better for diagnalstics
Let's check for the outliers shown in residuals vs leverage'
houses[12778,]

log(price) ~ bedrooms + grade + view + log(sqft_living) + sqft_above + sqft_basement, data = house[!select3,]

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


# Confidence interval
# there's code exist



