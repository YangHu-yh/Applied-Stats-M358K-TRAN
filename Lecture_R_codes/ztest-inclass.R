phat = 0.453
p0 = 0.477
n = 6600
z = (phat - p0)/sqrt(p0*(1-p0)/n)
z
#two-sided z-test
#under H0, test statistic Z follows the standard normal distribution
#need to compute the two tails
pnorm(z)
1-pnorm(-z)
#our p-value is the sum of these two
#first command: computed P(Z < z)
#second command: computed P(Z > -z) = P(Z > 3.9...)
#altogether: this gives: P(|Z| > |z|)
#pvalue:
pnorm(z) + (1-pnorm(-z))
#--- now: do a z-test for difference of proportions
n1 = 150000 - 6600
n2 = 6600
p1hat = 0.477
p2hat = 0.453
#two-sided test
phat.common = (p1hat*n1 + p2hat*n2)/(n1+n2)
z.twosample = phat.common / sqrt(phat.common*(1-phat.common)/(n1+n2))
z.twosample
phat.common
phat.common / sqrt(phat.common*(1-phat.common)/(n1+n2))
phat.common*(1-phat.common)/(n1+n2)
sqrt(phat.common*(1-phat.common)/(n1+n2))
z.twosample
#compute p-value
(1-pnorm(z.twosample))*2
getwd()
savehistory(file = "ztest-inclass.R")
