setwd("~/gitfolders/358K/codes")
library(ggplot2)
library(vcd)
rm(list = ls())
data <- read.csv("data/email.csv", header=TRUE)
head(data)
summary(data)
class(data$spam)
head(data_
head(dat)
head(data)
#--- the following code makes sure that R has the correct data types
#--- this is important for all R commands to work properly
convert <- function(obj,types){
    for (i in 1:length(obj)){
        FUN <- switch(types[i],character = as.character, 
                                   numeric = as.numeric, 
                                   factor = as.factor, date = as.Date, time = time)
        obj[,i] <- FUN(obj[,i])
    }
    obj
}
#set the target types of the various columns
numcol = dim(data)[2]
type.target = rep("factor", numcol)
type.target[c(1:numcol)[names(data) == "cc"]] <- "numeric"
type.target[c(1:numcol)[names(data) == "image"]] <- "numeric"
type.target[c(1:numcol)[names(data) == "attach"]] <- "numeric"
type.target[c(1:numcol)[names(data) == "dollar"]] <- "numeric"
type.target[c(1:numcol)[names(data) == "inherit"]] <- "numeric"
type.target[c(1:numcol)[names(data) == "viagra"]] <- "numeric"
type.target[c(1:numcol)[names(data) == "password"]] <- "numeric"
type.target[c(1:numcol)[names(data) == "num_char"]] <- "numeric"
type.target[c(1:numcol)[names(data) == "line_breaks"]] <- "numeric"
type.target[c(1:numcol)[names(data) == "exclaim_mess"]] <- "numeric"
type.target[c(1:numcol)[names(data) == "time"]] <- "date"
cbind(names(data), type.target)
data <- convert(data, type.target)
summary(data)
#--- Example: spam vs number (factor)
table(data$number)
#frequency table of the variable number
table(data$spam, data$number)
#table: spam vs number
ggplot(data, aes(x=number,fill=spam)) + geom_bar()
mosaic(spam ~ number, data = data)
#impression: no numbers has more spam ratio
#interesting? not sure
#--- Example: spam vs line_breaks (numeric)
summary(data$line_breaks)
hist(data$line_breaks)
dotchart(data$line_breaks)
par(mfrow = c(1,2))
dotchart(data$line_breaks[data$spam == 0], main = "not spam")
dotchart(data$line_breaks[data$spam == 1], main = "spam")
par(mfrow = c(1,1))
table(data$spam)
ggplot(data, aes(x=line_breaks)) + geom_histogram()
ggplot(data, aes(x=line_breaks)) + geom_histogram(binwidth=1000)
ggplot(data, aes(x=line_breaks)) + geom_histogram(binwidth=10)
ggplot(data, aes(x=line_breaks)) + geom_histogram(binwidth=20) + facet_grid(spam ~ .)
ggplot(data, aes(x=line_breaks, fill = spam)) + geom_histogram(binwidth=20)
ggplot(data, aes(x=line_breaks)) + geom_freqpoly(binwidth=10)
#frequency polygon, specified binwidth
ggplot(data, aes(x=line_breaks)) + geom_freqpoly(binwidth = 20) + geom_histogram(fill = "cornsilk", colour = "grey60", alpha = 0.5,binwidth=30) 
#frequency polygon line_breaks vs spam, same plot
ggplot(data, aes(x=line_breaks, fill = spam)) + geom_freqpoly(binwidth=10) 
#frequency polygon line_breaks vs spam, different plots
ggplot(data, aes(x=line_breaks)) + geom_freqpoly(binwidth=10) + facet_grid(spam ~ .) 
ggplot(data, aes(x=line_breaks)) + geom_density()
#density plot
ggplot(data, aes(x=line_breaks, fill = spam)) + geom_density(alpha=0.5)
#violin plot line_breaks vs spam
ggplot(data, aes(x=spam,y=line_breaks)) + geom_violin()
#scale proportional to the number in each spam group
ggplot(data, aes(x=spam,y=line_breaks)) + geom_violin(scale="count")
#boxplot 
ggplot(data, aes(x=1,y = line_breaks)) + geom_boxplot()
#boxplot line_breaks vs spam
ggplot(data, aes(x=spam,y = line_breaks)) + geom_boxplot()
#histogram line_breaks vs spam, separate plots
ggplot(data, aes(x=line_breaks)) + geom_histogram(binwidth=20) + facet_grid(spam ~ .)
#histogram line_breaks vs spam, same plot
ggplot(data, aes(x=line_breaks, fill = spam)) + geom_histogram(binwidth=20)
ggplot(data, aes(x=line_breaks, fill = spam)) + geom_freqpoly(binwidth=10) 
ggplot(data, aes(x=line_breaks)) + geom_density() + facet_grid(spam ~ .) 
ggplot(data, aes(x=line_breaks, fill = spam)) + geom_density(alpha=0.5)
ggplot(data, aes(x=spam,y=line_breaks)) + geom_violin()
ggplot(data, aes(x=spam,y = line_breaks)) + geom_boxplot()
ggplot(data, aes(x=line_breaks, fill = spam)) + geom_density(alpha=0.5)
#impression: spam: few line breaks, concentrated near 0. no-spam: near-0 and near 600 concentration. 
#shorter impression: fewer line breaks --> more likely to be spam. 
#interesting? yes
#--- Example: spam vs inherit (numeric)
summary(data$inhert)
summary(data$inherit)
dotchart(data$inherit)
ggplot(data, aes(x=inherit)) + geom_histogram()
ggplot(data, aes(x=inherit)) + geom_density()
ggplot(data, aes(x=1,y=inherit)) + geom_boxplot()
#? how to describe spam vs inherit?
#! treat it like a categorical variable
ggplot(data, aes(x=inherit,fill=spam)) + geom_bar()
mosaic(spam ~ inherit, data = data)
#impression: not super interesting. If has 1 instance of inherit, slightly more likely to be spam. 
#interesting? no
?savehistory
savehistory(file = "inclass-lecture2.R")
