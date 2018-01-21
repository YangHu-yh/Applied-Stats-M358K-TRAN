# CLASS M 358K
# UNIQUE NO.:
# MEETING TIME: T TH 9:30 - 11:00

# STUDENT: YANG HU
# UT EID: YH8473
# LAST EDIT: 
# DUE: 9/26
# In this homework, you will explore the dataset emails to help answering the
# question: which variables are useful to distinguish spam vs regular emails? 
# The Emails dataset. data/emails.csv on Canvas. Variable description
# . data/emails-descrip.txt on Canvas. 

# clear the history/data/environment/perameter
rm(list = ls())
# Get neended data, set as data and load needed tools
library(grid)
library(ggplot2)
library(vcd)
setwd("S:\!!!COLLEGE\2017 Fall\M 358K")
data <- read.csv("data/emails.csv")

# directory not reading...
setwd("S:/!!!COLLEGE/2017 Fall/M 358K")
data <- read.csv("data/emails.csv")
# data name wrong
data <- read.csv("./data/email.csv")
#check if correct:
head(data)
# correct heading

#################################################################################################################
# Check types(what we are using are spam, format, exclaim_mess, num_char)
# set the target types of the various columns
# Use some code learned in class:
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
# we know they should be correspondingly factor, factor, numeric,numeric by R CODES//NOTES in class
# Check type.target:
cbind(names(data), type.target)
data <- convert(data, type.target)
# forget to set convert function:
convert <- function(obj,types){
    for (i in 1:length(obj)){
        FUN <- switch(types[i],character = as.character, 
                                   numeric = as.numeric, 
                                   factor = as.factor, date = as.Date, time = time)
        obj[,i] <- FUN(obj[,i])
    }
    obj
}
data <- convert(data, type.target)
# check if the convertion is successful:
sapply(data, class)

#################################################################################################################


# 1. spam vs format: descriptive analysis with categorical variables
# (a) Produce a mosaic plot of spam vs format. 
# 	What does this mosaic plot reveal? 

# Try to produce mosaic plot of spam vs format:
mosaic(data$spam ~ data$format)
# Wrong form
mosaic(spam ~ format, data = data)
# For emails have format, less chance to the spam. And for emails have no format, more chance to spam but still not a lot. Cannot tell if it is due to change to be this data set.
# For either format, the chance to be spam seems pretty small, spam only covers less than twenty percent of the left part of box, even could be less than ten percent.



# (b) Produce a table of spam vs format. 
# 	What fraction of spam are formatted? 
# 	What fraction of non-spam are formatted? 
# 	What fraction of formatted emails are spam? 
# 	What fraction of plain text emails are spam? 

# TO produce a table:
table(data$spam, data$format)
# Can not tell for sure if the column or the row corresponding to spam or format
# Attempt to change the factor level name:
# Check and set level name:
Spam_renamed <- factor(rep(data$spam))
# See what's inside:
Spam_renamed
# give 0 and 1 as expected
levels(Spam_renamed) <- c('not_spam', 'spam')
# Check what's levels name now:
Spam_renamed
# Succeed
# Same for format
Format_renamed <- factor(rep(data$format))
levels(Format_renamed) <- c('plain_text','formatted')
# Print table now:
table(Spam_renamed, Format_renamed)

# Realize the level names should be set at first right after setting the types and before mosaic...
# Then mosaic should be: mosaic(Spam_renamed ~ Format_renamed, data = data)
# Apply to all other two variables:
Spam_renamed <- factor(rep(data$spam))
# See what's inside:
Spam_renamed
# give 0 and 1 as expected
levels(Spam_renamed) <- c('not_spam', 'spam')


# Calculate fraction
# spam & formated/all formatted emails
#	total formatted will be:
sum(Format_renamed == 'formatted')
# check with table: 2568 + 158, correct
#	spam will be:
sum(Spam_renamed == 'spam' & Format_renamed == 'formatted')
# same as the table shown
# Ratio spam / overall
sum(Spam_renamed == 'spam' & Format_renamed == 'formatted') / sum(Format_renamed == 'formatted')

# non-spam formatted will be
sum(Spam_renamed == 'not_spam' & Format_renamed == 'formatted')
# non-spam formatted / all formatted emails
sum(Spam_renamed == 'not_spam' & Format_renamed == 'formatted') / sum(Format_renamed == 'formatted')

# formatted spam:
sum(Format_renamed == 'formatted' & Spam_renamed == 'spam') 
# All spam:
sum(Spam_renamed == 'spam')
# formatted spam / all spam emails
sum(Format_renamed == 'formatted' & Spam_renamed == 'spam')  / sum(Spam_renamed == 'spam')

# plain text spam / all spam emails
# plain text spam:
sum(Spam_renamed == 'plain_text' & Spam_renamed == 'spam')
# Ratio
sum(Spam_renamed == 'plain_text' & Spam_renamed == 'spam') / sum(Spam_renamed == 'spam')
# (c) Summarize the relationship between spam and format in a couple of sentences.




# 2. Sometimes it is useful to recode variables. 
# spam vs exclaim mess is an example.
# (a) Make a dotchart, a boxplot, a histogram and a violin plot of spam vs exclaim mess. 
## dotchart/dotplot
dotchart(data$exclaim_mess[data$spam == 0], main = 'not spam')
dotchart(data$exclaim_mess)
dotchart(data$exclaim_mess[data$spam == 1], main = 'spam')
## box
ggplot(data, aes(x=spam, y=exclaim_mess)) + geom_boxplot()
# exclaim_mess/100:
ggplot(data, aes(x=spam, y=exclaim_mess/100)) + geom_boxplot()

## hist
ggplot(data, aes(x=exclaim_mess)) + geom_histogram(binwidth = 5)
## violin
ggplot(data, aes(x=spam, y=exclaim_mess)) + geom_violin()
# also changed scale
ggplot(data, aes(x=spam, y=exclaim_mess/100)) + geom_violin()

# (b) Which of the above plots are useful for describing the distribution of this variable? 
# What do those plots convey? 
#### A LOT OF THEM HAVE LITTLE EXCLAIM_MESS, ONLY A FEW HAVE VERY LARGE EXCLAIM_MESS
# Why are the other plots not as useful? 
#### TOO SMALL! CANNOT TELL
# Summarize the relationship between spam and exclaim mess in a couple of sentences. 

# (c) Recode exclaim mess into 4 values: 0,1,2,>= 3. 
# Call this new variable exclaim mess.recode. 
data$exclaim_mess.recode <- cut(data$exclaim_mess, breaks(0,1,2,3, >3), right=FALSE)
# figure out correct way to write break
data$exclaim_mess.recode <- cut(data$exclaim_mess, breaks(0,1,2,3,Inf), right=FALSE)
# no function break..
install.packages('breaks')
# no such packages...wrong way to use the breaks
data$exclaim_mess.recode <- cut(data$exclaim_mess, breaks=c(0,1,2,3,Inf), right=FALSE)
# Check result
head(data$exclaim_mess.recode)
# Level correct

# What is the type of this new variable? 
# Check type:
sapply(data, class)
# exclaim_mess.recode is 'factor'...

# (d) Produce a table and a mosaic plot of spam vs exclaim mess.recode. 
# table
table(Spam_renamed, data$exclaim_mess.recode)
# mosaic
mosaic(Spam_renamed ~ exclaim_mess.recode, data=data)
# What do they reveal?


# (e) Summarize the relationship between spam and exclaim mess.recode in a couple of sentences. 
#### More exclaim mess, less possibility to be spam. Overall possibility are lower than 20% and decreasing as more exclaim mess.


# (f) Why is it reasonable to recode exclaim mess? 
#### Because only a few large exclaim mess, which made the graph only able to see a strick in the begining like a line and flat at the rest, not very informative.

# (Bonus question) How would your summary on the relation between spam and exclaim mess change if you had recoded it into 5 values? 
## 5 values will be: [0,1),[1,2),[2,3),[3,4),[4,Inf)
data$exclaim_mess.recodeb5 <- cut(data$exclaim_mess, breaks=c(0,1,2,3,4,Inf), right=FALSE)
# table and mosaic
table(Spam_renamed, data$exclaim_mess.recodeb5)
mosaic(Spam_renamed ~ exclaim_mess.recodeb5, data=data)
# 10 values? 
data$exclaim_mess.recodeb10 <- cut(data$exclaim_mess, breaks=c(0,1,2,3,4,5,6,7,8,9,Inf), right=FALSE)
table(Spam_renamed, data$exclaim_mess.recodeb10)
mosaic(Spam_renamed ~ exclaim_mess.recodeb10, data=data)

# 3 values? 
data$exclaim_mess.recodeb3 <- cut(data$exclaim_mess, breaks=c(0,2,5,Inf), right=FALSE)
table(Spam_renamed, data$exclaim_mess.recodeb3)
mosaic(Spam_renamed ~ exclaim_mess.recodeb3, data=data)
# Which regroup is most reasonable, and why






# 3. spam vs num char: descriptive analysis with numerical variables
# (a) Make a dotchart, boxplot and violin plot of spam vs num char. 
# dotchart
# boxplot
# violin

## dotchart/dotplot
dotchart(data$num_char)
dotchart(data$num_char[data$spam == 0], main = 'not spam')
## box
ggplot(data, aes(x=Spam_renamed, y=num_char)) + geom_boxplot()
## violin
ggplot(data, aes(x=Spam_renamed, y=num_char)) + geom_violin()
# if want proportional:
ggplot(data, aes(x=spam, y=num_char)) + geom_violin(scale="count")

# (b) Which of the above plots are useful for describing the distribution of this variable? 
# What do those plots convey? 
#### the number of characters overall are small, less than 75. A little bit difference between spam and non-spam.
#### Maybe do each

# Summarize the distribution of num char in a couple of sentences.
#### ...

# # Maybe freqpoly
# ggplot(data, aes(x=num_char)) + geom_freqpoly(binwidth = 1) + geom_histogram(fill = "cornsilk", colour = "grey60", alpha = 0.5,binwidth=1)
# # compare spam and not_spam:
# ggplot(data, aes(x=num_char)) + geom_freqpoly(binwidth = 1) + geom_histogram(fill = "cornsilk", colour = "grey60", alpha = 0.5,binwidth=1) + facet_grid(Spam_renamed ~ .) 

# # Or density
# ggplot(data, aes(x=num_char, fill = spam)) + geom_density(alpha=0.5)



# (Bonus question) Run a descriptive analysis for spam vs X for each of the 20 variable X in the dataset. 
# For each analysis, include one plot or one table that is most informative, 
# write a short sentence summarizing the relationship between spam and X, and 
# say “yes” or “no” to the question: 
# Should this variable be included for further analysis?

# Spam vs to_multiple -- factor
mosaic(Spam_renamed ~ to_multiple, data = data)

# Spam vs from -- factor
mosaic(Spam_renamed ~ from, data = data)

# Spam vs cc -- num
ggplot(data, aes(x=to_multiple, fill = spam)) + geom_density(alpha=0.5)

# Spam vs sent_email -- factor
mosaic(Spam_renamed ~ sent_email, data = data)

# Spam vs time -- date
# Analyze by cutting into months
data$time.recode <- cut(data$exclaim_mess, breaks(???), right=FALSE)
# Then draw graph as factor - use mosaic
mosaic(Spam_renamed ~ time.recode, data = data)

# Spam vs image -- factor
mosaic(Spam_renamed ~ image, data = data)

# Spam vs attach -- num
ggplot(data, aes(x=attach, fill = spam)) + geom_density(alpha=0.5)

# Spam vs dollar -- num
ggplot(data, aes(x=dollar, fill = spam)) + geom_density(alpha=0.5)

# Spam vs winner -- factor
mosaic(Spam_renamed ~ winner, data = data)

# Spam vs inherit -- num
ggplot(data, aes(x=inherit, fill = spam)) + geom_density(alpha=0.5)

# Spam vs viagra -- num
ggplot(data, aes(x=viagra, fill = spam)) + geom_density(alpha=0.5)

# Spam vs password -- num
ggplot(data, aes(x=password, fill = spam)) + geom_density(alpha=0.5)

# Spam vs num_char -- num
ggplot(data, aes(x=num_char, fill = spam)) + geom_density(alpha=0.5)

# Spam vs line_breaks -- num
ggplot(data, aes(x=line_breaks, fill = spam)) + geom_density(alpha=0.5)

# Spam vs format -- factor
mosaic(Spam_renamed ~ format, data = data)

# Spam vs re_subj -- factor
mosaic(Spam_renamed ~ re_subj, data = data)

# Spam vs exclaim_subj -- factor
mosaic(Spam_renamed ~ exclaimm_subj, data = data)

# Spam vs urgent_subj -- factor
mosaic(Spam_renamed ~ urgent_subj, data = data)

# Spam vs exclaim_mess -- num
ggplot(data, aes(x=exclaim_mess, fill = spam)) + geom_density(alpha=0.5)

# Spam vs number -- factor
mosaic(Spam_renamed ~ number, data = data)



