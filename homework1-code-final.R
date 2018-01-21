# CLASS M 358K
# UNIQUE NO.:
# MEETING TIME: T TH 9:30 - 11:00

# STUDENT: YANG HU
# UT EID: YH8473
# DUE: 9/26
# In this homework, you will explore the dataset emails to help answering the question: which variables are useful to distinguish spam vs regular emails? The Emails dataset. data/emails.csv on Canvas. Variable description. data/emails-descrip.txt on Canvas. 

# clear the history/data/environment/perameter
rm(list = ls())
# Get neended data, set as data and load needed tools
library(grid)
library(ggplot2)
library(vcd)
setwd("S:/!!!COLLEGE/2017 Fall/M 358K")
data <- read.csv("./data/email.csv")

# Use some code learned in Prof. Ngoc Tran class to set types for each column:
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

# set convert function:
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

# Set level names
Spam_renamed <- factor(rep(data$spam))
levels(Spam_renamed) <- c('not_spam', 'spam')
Format_renamed <- factor(rep(data$format))
levels(Format_renamed) <- c('plain_text','formatted')

#################################################################################################################


# 1. spam vs format: descriptive analysis with categorical variables
# (a) Produce a mosaic plot of spam vs format. 
# 	What does this mosaic plot reveal? 

# Try to produce mosaic plot of spam vs format:
png(file = "hw1fig1.png")
mosaic(Spam_renamed ~ Format_renamed, data = data)
dev.off()
# For emails have format, less chance to the spam. And for emails have no format, more chance to spam but still not a lot. Cannot tell if it is due to change to be this data set.
# For either format, the chance to be spam seems pretty small, spam only covers less than twenty percent of the left part of box, even could be less than ten percent.
table(Spam_renamed,Format_renamed)


# (b) Produce a table of spam vs format. 
# 	What fraction of spam are formatted? 
# 	What fraction of non-spam are formatted? 
# 	What fraction of formatted emails are spam? 
# 	What fraction of plain text emails are spam? 


# Calculate fraction
# spam & formated/all formatted emails
sum(Spam_renamed == 'spam' & Format_renamed == 'formatted') / sum(Format_renamed == 'formatted')
# non-spam formatted / all formatted emails
sum(Spam_renamed == 'not_spam' & Format_renamed == 'formatted') / sum(Format_renamed == 'formatted')
# formatted spam / all spam emails
sum(Format_renamed == 'formatted' & Spam_renamed == 'spam')  / sum(Spam_renamed == 'spam')
# plain text spam / all spam emails
sum(Format_renamed == 'plain_text' & Spam_renamed == 'spam') / sum(Spam_renamed == 'spam')

# (c) Summarize the relationship between spam and format in a couple of sentences.


# 2. Sometimes it is useful to recode variables. 
# spam vs exclaim mess is an example.
# (a) Make a dotchart, a boxplot, a histogram and a violin plot of spam vs exclaim mess. 
## dotchart/dotplot
png(file = "hw1fig2.png")
dotchart(data$exclaim_mess，main = "Dot chart for Exclaim mess", xlab = "Exclaim Mess", ylab='Count' )
dev.off()
## box
png(file = "hw1fig3.png")
ggplot(data, aes(x=Spam_renamed, y=exclaim_mess)) + geom_boxplot()
dev.off()
## hist
png(file = "hw1fig4.png")
ggplot(data, aes(x=exclaim_mess)) + geom_histogram(binwidth = 5)
dev.off()

## violin
png(file = "hw1fig5.png")
ggplot(data, aes(x=Spam_renamed, y=exclaim_mess)) + geom_violin()
dev.off()

# Compare dot chart
png(file = "hw1fig6.png")
par(mfrow = c(1,2))
dotchart(data$exclaim_mess[data$spam == 0], main = 'not spam')
dotchart(data$exclaim_mess[data$spam == 1], main = 'spam')
par(mfrow = c(1,1))
dev.off()

# Compare hist
png(file = "hw1fig7.png")
ggplot(data, aes(x=exclaim_mess)) + geom_histogram(binwidth = 5) + facet_grid(spam ~ .)
dev.off()

# (b) Which of the above plots are useful for describing the distribution of this variable? 
# What do those plots convey? 
#### A LOT OF THEM HAVE LITTLE EXCLAIM_MESS, ONLY A FEW HAVE VERY LARGE EXCLAIM_MESS
# Why are the other plots not as useful? 
####...
# Summarize the relationship between spam and exclaim mess in a couple of sentences. 

# (c) Recode exclaim mess into 4 values: 0,1,2,>= 3. 
data$exclaim_mess.recode <- cut(data$exclaim_mess, breaks=c(0,1,2,3,Inf), right=FALSE)

# (d) Produce a table and a mosaic plot of spam vs exclaim mess.recode. 
# table
table(Spam_renamed, data$exclaim_mess.recode)
# mosaic
png(file = "hw1fig7.png")
mosaic(Spam_renamed ~ exclaim_mess.recode, data=data)
dev.off()

# What do they reveal?
####...(answer in writeup)

# (e) Summarize the relationship between spam and exclaim mess.recode in a couple of sentences. 
#### More exclaim mess, less possibility to be spam. Overall possibility are lower than 20% and decreasing as more exclaim mess.
####...(answer in writeup)

# (f) Why is it reasonable to recode exclaim mess? 
#### Because only a few large exclaim mess, which made the graph only able to see a strick in the begining like a line and flat at the rest, not very informative.

# (Bonus question) How would your summary on the relation between spam and exclaim mess change if you had recoded it into 5 values? 
####...(answer in writeup)

### recode exclaim mess into categorical variables with x number of catagories
## 5 values will be: [0,1),[1,2),[2,3),[3,4),[4,Inf)
data$exclaim_mess.recodeb5 <- cut(data$exclaim_mess, breaks=c(0,1,2,3,4,Inf), right=FALSE)
table(Spam_renamed, data$exclaim_mess.recodeb5)  # table and mosaic
png(file = "hw1fig8.png")
mosaic(Spam_renamed ~ exclaim_mess.recodeb5, data=data)
dev.off()

# 10 values? 
data$exclaim_mess.recodeb10 <- cut(data$exclaim_mess, breaks=c(0,1,2,3,4,5,6,7,8,9,Inf), right=FALSE)
table(Spam_renamed, data$exclaim_mess.recodeb10)
png(file = "hw1fig9.png")
mosaic(Spam_renamed ~ exclaim_mess.recodeb10, data=data)
dev.off()

# 3 values? 
data$exclaim_mess.recodeb3 <- cut(data$exclaim_mess, breaks=c(0,2,5,Inf), right=FALSE)
table(Spam_renamed, data$exclaim_mess.recodeb3)
png(file = "hw1fig10.png")
mosaic(Spam_renamed ~ exclaim_mess.recodeb3, data=data)
dev.off()

# Which regroup is most reasonable, and why
####...





# 3. spam vs num char: descriptive analysis with numerical variables
# (a) Make a dotchart, boxplot and violin plot of spam vs num char. 
## dotchart/dotplot
png(file = "hw1fig11.png")
dotchart(data$num_char, main = 'Dot Chart Overall for Num Char')
png(file = "hw1fig12.png")
par(mfrow = c(1,2))
dotchart(data$num_char[data$spam == 0], main = 'not spam')
dotchart(data$num_char[data$spam == 1], main = 'spam')
par(mfrow = c(1,1))
dev.off()

## box
png(file = "hw1fig13.png")
ggplot(data, aes(x=Spam_renamed, y=num_char)) + geom_boxplot()
dev.off()
## violin in proportional
png(file = "hw1fig14.png")
ggplot(data, aes(x=Spam_renamed, y=num_char)) + geom_violin(scale="count")
dev.off()

# (b) Which of the above plots are useful for describing the distribution of this variable? 
# What do those plots convey? 
#### the number of characters overall are small, less than 75. A little bit difference between spam and non-spam.
#### Maybe do each

# Summarize the distribution of num char in a couple of sentences.
#### ...



# (Bonus question) Run a descriptive analysis for spam vs X for each of the 20 variable X in the dataset. 
# For each analysis, include one plot or one table that is most informative, 
# write a short sentence summarizing the relationship between spam and X, and 
# say “yes” or “no” to the question: 
# Should this variable be included for further analysis?

# Spam vs to_multiple -- factor


png(file = "hw1fig15.png")
par(mfrow = c(4,5))
mosaic(Spam_renamed ~ to_multiple, data = data)


# Spam vs from -- factor
mosaic(Spam_renamed ~ from, data = data)


# Spam vs cc -- num
ggplot(data, aes(x=to_multiple, fill = spam)) + geom_density(alpha=0.5)


# Spam vs sent_email -- factor
mosaic(Spam_renamed ~ sent_email, data = data)


# Spam vs time -- date
ggplot(data, aes(x=time)) + geom_histogram(binwidth = 1)+facet_grid(spam ~ .)


# Spam vs image -- factor
mosaic(Spam_renamed ~ image, data = data)


# Spam vs attach -- num
ggplot(data, aes(x=attach, fill = spam)) + geom_density(alpha=0.5)


# Spam vs dollar -- num
ggplot(data, aes(x=dollar, fill = spam)) + geom_density(alpha=1)


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
mosaic(Spam_renamed ~ exclaim_subj, data = data)


# Spam vs urgent_subj -- factor
mosaic(Spam_renamed ~ urgent_subj, data = data)


# Spam vs exclaim_mess -- num
ggplot(data, aes(x=exclaim_mess, fill = spam)) + geom_density(alpha=0.5)


# Spam vs number -- factor
mosaic(Spam_renamed ~ number, data = data)
dev.off()




# Spam vs to_multiple – factor - YES
 
 
# Spam vs from – factor - NO
 
# Spam vs cc – num - YES
 

# Spam vs sent_email – factor - YES
 
# Spam vs time – date -- YES
 

# Spam vs image – factor -- YES
 
# Spam vs attach – num  -- NO
 
# Spam vs dollar – num -- NO
 
# Spam vs winner – factor – YES
 
# Spam vs inherit – num – YES
 
# Spam vs viagra – num -- YES
 
# Spam vs password – num -- NO
 
# Spam vs num_char – num -- YES
 
# Spam vs line_breaks – num – YES
 
# Spam vs format – factor -- YES
 
# Spam vs re_subj – factor – YES
 
# Spam vs exclaim_subj – factor -- NO
 
# Spam vs urgent_subj – factor -- NO
 
# Spam vs exclaim_mess – num – YES
 
# Spam vs number – factor – YES

