#--------
#Email data analysis
#Author: Ngoc M. Tran
#Date: September 2nd, 2017
#--------
#data source: OS3
#data desccription: OS3. See: email-descrip.txt
#More on this dataset: OS3, section 1.2 to 1.6
#--------------- 
#--- Question in this analysis: which variables are good indicators for spam?

#--- in this class, we will put formally describe this dataset from start to finish

#------------
#--- set home folder, load data
setwd("~/gitfolders/358K/codes")
#packages I use for plotting
library(ggplot2) 
library(vcd)
#clear memory, read in data
rm(list = ls())
data <- read.csv("data/email.csv", header=TRUE)

#------
#STEP ONE: check types of your variables
#------
#see what the data looks like
head(data)
#list all variables
names(data)

#-- make sure that R has the correct data types
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

#check: names and target types
cbind(names(data), type.target)
#convert
data <- convert(data, type.target)

#check the names vs actual types
sapply(data, class)
#quick summary for each variable
summary(data)

#------
#Step 2: rapidly describe: spam vs X. 
#------
#keep a vector of interesting variables, to be examined more later.
#recall: numcol = number of variables
interesting <- rep("no", numcol)
#turn into a dataframe with names
interesting <- data.frame(t(interesting))
names(interesting) <- names(data)
interesting$spam <- "yes"


#----spam vs to_multiple
#check the type of to_multiple
class(data$to_multiple)
#try out a few things
table(data$to_multiple,data$spam)
mosaic(spam ~ to_multiple, data=data)
#take-away: if to_multiple = 1, more likely to be spam. 
interesting$to_multiple <- "yes"

#----spam vs from
class(data$from)
table(data$from, data$spam)
table(data$from)
#only 3 emails have no "from" field, and they are all spam. 
#take-away: no "from" field = spam. No need for further examinations.

#---spam vs cc
class(data$cc)
#is numeric. first check: dotchart
dotchart(data$cc)
#has a variety of values. Concentrated in 0,1,2 etc
#dotchart spam vs cc
par(mfrow = c(1,2))
dotchart(data$cc[data$spam == 0], main = "not spam")
dotchart(data$cc[data$spam == 1], main = "spam")
par(mfrow = c(1,1))
#both have many 0's. Spam has 0 or many. not spam has 0,1,2, etc
#a table can be helpful
table(data$spam, data$cc)
#histogram
ggplot(data, aes(x=cc, fill = spam)) + geom_histogram(binwidth=2)
#further visualizations unlikely to be helpful due to large number of 0's.
#recode cc into a categorical variable with values: 0, > 0
data$cc.binary <- factor(data$cc > 0)
table(data$spam, data$cc.binary)
mosaic(spam ~ cc.binary, data =data)
#take-away: has cc --> LESS likely to be spam. 
interesting$cc <- "yes"

#------ More analysis: see class output



