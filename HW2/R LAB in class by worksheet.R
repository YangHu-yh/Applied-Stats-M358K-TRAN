# R LAB

# M358K - Hypothesis testsing - R lab
# September 28, 2017
# To each of the ‘is ... statistically sigifnicant’ question below, set up a hypothesis test. 
# Write down 
# • H0 and HA 
# • What test you use in R: name of test, one-sided or two-sided 
# • Your chosen signiﬁcance level 
# • Report the p-value you obtained 
# • Give a conclusion

# H0: 
# HA:
# You could do stance vs ideology or ideology vs stance
# Read in mosaic as stance by ideology
# it spreads out by ideology, and then see the stance proportion in each catagory of ideology
# Surprisingly more Moderate says NO.
# If we do ideology vs stance:
# ..

# Is there a relationship between stance and ideology
# H0: No relationship between
# HA: There is an association
# alpha(sig level):0.05
# test: cat. vs cat.
# Options: Fisher, chi-square, permutation test
# Use Chi-square
table(data$ideology, data$stance)
# big number - good
chisq.test(data.table)
# ...
# p-value < 0.05
# Reject the null = there is an relationship






##################################################################################3

# Goal: Is our class proportion of yes to the American dream significantly different
# from the national proportion?
# H0: not sig
# HA: it is(two-sided)
# Test: z-test for proportion
# Alpha = 0.05

# n = 38
# phat = 28/n
# # national p
# p0 = 0.77
# z = (phat - p0)/sqrt(p0*(1-p0)/n)
# z
# [1] -0.4857015
# pnorm(z)
# [1] 0.3135894
# 1-pnorm(-z)
# [1] 0.3135894
# pnorm(z) + (1-pnorm(-z))
# [1] 0.6271788

# p-value > alpha = 0.01
# Fail to reject the null
#  - our class proportion is not sig iffernet from the national proportion
# Conclusion: our class are just as optimistic on the American dream as the nation

# LOad data - see description
# Check variable type

## Good variable - survived, survtime, transplant
## analysis of survived cs transplant
## plot
mosaic(survived ~ transplant, data=heartTr)
# Check descriptive percentage by table:
table(hearTr$survived, hearTr$transplant)
# survived rate
# 0.3478261 for treatment; 0.1176471 for control
# Is this signiicant?
# sample size here is fairly small
# test: does treatment have better survival rate than control?
# H0: the treatment group does NOT have stat. sig better survival rate than the control
# HA: treatment > better
# one-sided
# Test: fisher exact test for 2x2 table
# Fisher's test: good for small dataset
heart.table <- table(heartTr$survived, heartTr$transplant)
alpha = 0.01
fisher.test(heart.table, alternative = 'less')
# Result:
# 	Fisher's Exact Test for Count Data

# data:  heart.table
# p-value = 0.0104
# alternative hypothesis: true odds ratio is less than 1
# 95 percent confidence interval:
#  0.0000000 0.7215124
# sample estimates:
# odds ratio 
#  0.2530102 


## plot
ggplot(heartTr, aes(y=survtime, x=transplant)) + geom_violin()
# Check descriptive percentage by table:
table(hearTr$survtime, hearTr$transplant)
# Violin graph giving a more impressive result, try boxplot as well:
ggplot(heartTr, aes(y=survtime, x=transplant)) + geom_boxplot()
# As expected, similar results but more 'number' less 'artistic'