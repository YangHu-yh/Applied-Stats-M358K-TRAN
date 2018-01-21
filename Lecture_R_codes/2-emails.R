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

#------------
#--- set home folder, load data
setwd("~/gitfolders/358K/codes")
library(ggplot2)
library(vcd)
rm(list = ls())
data <- read.csv("data/email.csv", header=TRUE)

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

#check: names and target types
cbind(names(data), type.target)
#convert
data <- convert(data, type.target)

#check the names vs actual types
sapply(data, class)
#quick summary for each variable
summary(data)

#--- Example: spam vs number (factor)
table(data$number)
table(data$spam, data$number)
ggplot(data, aes(x=number,fill=spam)) + geom_bar()
mosaic(spam ~ number, data = data)

#--- Example: spam vs line_breaks (numeric)
#-dotchart (also called dotplot)
dotchart(data$line_breaks)
#dotchart line_breaks vs spam
par(mfrow = c(1,2))
dotchart(data$line_breaks[data$spam == 0], main = "not spam")
dotchart(data$line_breaks[data$spam == 1], main = "spam")
par(mfrow = c(1,1))

#-histogram 
ggplot(data, aes(x=line_breaks)) + geom_histogram()
#histogram with specified binwidth
ggplot(data, aes(x=line_breaks)) + geom_histogram(binwidth=1000)
ggplot(data, aes(x=line_breaks)) + geom_histogram(binwidth=10)
#histogram line_breaks vs spam, separate plots
ggplot(data, aes(x=line_breaks)) + geom_histogram(binwidth=20) + facet_grid(spam ~ .)
#histogram line_breaks vs spam, same plot
ggplot(data, aes(x=line_breaks, fill = spam)) + geom_histogram(binwidth=20)

#frequency polygon, specified binwidth
ggplot(data, aes(x=line_breaks)) + geom_freqpoly(binwidth=10)
#frequency polygon overlaid on a histogram
ggplot(data, aes(x=line_breaks)) + geom_freqpoly(binwidth = 20) + geom_histogram(fill = "cornsilk", colour = "grey60", alpha = 0.5,binwidth=30) 
#frequency polygon line_breaks vs spam, same plot
ggplot(data, aes(x=line_breaks, fill = spam)) + geom_freqpoly(binwidth=10) 
#frequency polygon line_breaks vs spam, different plots
ggplot(data, aes(x=line_breaks)) + geom_freqpoly(binwidth=10) + facet_grid(spam ~ .) 

#density plot
ggplot(data, aes(x=line_breaks)) + geom_density()
#density plot line_breaks vs spam, different plots
ggplot(data, aes(x=line_breaks)) + geom_density() + facet_grid(spam ~ .) 
#density plot line_breaks vs spam, same plot, semi-transparent
ggplot(data, aes(x=line_breaks, fill = spam)) + geom_density(alpha=0.5)
#violin plot
ggplot(data, aes(x=1,y=line_breaks)) + geom_violin()
#violin plot line_breaks vs spam
ggplot(data, aes(x=spam,y=line_breaks)) + geom_violin()
#scale proportional to the number in each spam group
ggplot(data, aes(x=spam,y=line_breaks)) + geom_violin(scale="count")
#boxplot 
ggplot(data, aes(x=1,y = line_breaks)) + geom_boxplot()
#boxplot line_breaks vs spam
ggplot(data, aes(x=spam,y = line_breaks)) + geom_boxplot()

#--- Example: spam vs inherit (numeric)
dotchart(data$inherit)
#inherit has very few values. 
#usual visualization methods for numerics are not informative
ggplot(data, aes(x=inherit)) + geom_histogram()
ggplot(data, aes(x=inherit)) + geom_freqpoly()
ggplot(data, aes(x=inherit)) + geom_density()
ggplot(data, aes(x=1,y=inherit)) + geom_violin()
ggplot(data, aes(x=1,y=inherit)) + geom_boxplot()
#In this case, more informative if we treat inherit as if it was a categorical variable
table(data$inherit)
table(data$spam, data$inherit)
ggplot(data, aes(x=inherit,fill=spam)) + geom_bar()
mosaic(spam ~ inherit, data = data)

#-- Example: spam vs viagra
table(data$viagra)
table(data$spam, data$viagra)
#only one email with 8 counts of "viagra" in it, and it is spam. 
#in this case, having "viagra" surely implies that the email is spam, but it is not a useful criterion (only rules out one email!)











#---- class vs survival rate
## Data summary
#view first and last few lines
head(data)
tail(data)
#summarize
summary(data)
#table
table(data$survived, data$class)
#flat summary
ftable(data)

## Data visualization
#barplot class
ggplot(data, aes(x=class)) + geom_bar()
#barplot class vs survived, stacked
ggplot(data, aes(x=class,fill=survived)) + geom_bar()
#barplot class vs survived, side by side
ggplot(data, aes(x=class,fill=survived)) + geom_bar(position="dodge")
#mosaic plot class vs survived
mosaic(survived ~ class, data = data)
#change colors
mosaic(survived ~ class, data = data,highlighting_fill= c("lightpink1","seagreen4"))

#----- class, sex, age vs survival rate
#barplot, split by sex
ggplot(data, aes(x=class,fill=survived)) + geom_bar(position="dodge") + facet_grid(sex ~ .)
#barplot, split by sex and age
ggplot(data, aes(x=class,fill=survived)) + geom_bar(position="dodge") + facet_grid(sex ~ age)
#mosaic plots
mosaic(survived ~ class + age, data = data)
mosaic(survived ~ class + sex, data = data)
mosaic(survived ~ class + age + sex, data = data)

#It seems that children and women do tend to fare better than men. 
#Is this enough to change the conclusion on class?

#---- 
#mosaic plot: survived by class, male only
mosaic(survived ~ class, data = data, subset = sex == "male", main = "males only")
#mosaic plot: survived by class, male adults only
mosaic(survived ~ class, data = data, subset = sex == "male" & age == "adult", main = "adult males only")
#compared to the previous mosaic side by side.
dev.new() #makes a new plotting window
mosaic(survived ~ class, data = data, main = "full")
#how about male adults only
mosaic(survived ~ class, data = data, main = "full")
dev.new()
select <- data$sex == "male" & data$age == "adult"
mosaic(survived ~ class, data = data[select,], main = "males adults only")
#second class adults males seems even worse! 





