#Exam 2 Review: R Help Session
#Random Variables
#Standard deviation: 
q4values <- c(0,1,2)
q4probs <- c(0.3,0.2,0.5)
sum(q4values*q4probs)
expectedq4<-sum(q4values*q4probs)
expectedq4 #mean
sqdev4 <- (q4values-expectedq4)^2
varq4 <- sum(sqdev4*q4probs)
varq4 #variance
stdev4 <- sqrt(varq4)
stdev4 #standard deviation

#Normal Distribution
#Probability less than "q": pnorm(q, mean, sd) 
#Probability greater than "q": 1-pnorm(q, mean, sd)
#Value with "p" percent data below it: qnorm(p, mean, sd)
#Check if normal: hist() and qqnorm()

#Sampling distributions
#proportions: standard.error <- sqrt(p.hat * (1-p.hat) / n)
#means: standard.error <- sd/sqrt(n)
#Probability less than "q" for a sample: pnorm(q, mean, sd/sqrt(n))

#Confidence Intervals
#proportions: ci.prop(p.hat, n, conf.level= .95)
#z star<- qnorm(1-(1-conf.level)/2)
#means: t.test(data$survey, conf.level = )
#critical.value <- qt(1-(1-conf.level)/2 , df = n-1) 
#No excel data provided (means)
standard.error <- s/sqrt(n)
critical.value <- qt((1 - (1 - conf.level) / 2), df=n-1)
ci <- p-hat + critical.value * c(-standard.error, standard.error)

#z* vs. t*
zstar <- qnorm(1 - (1 - conf.level) / 2) #z star
t.star <- qt((1 - (1 - conf.level) / 2), df=n-1) #t star

#Frequently missed

#1) Ted Cruz check all that apply (Q1)
#2) How many credits CI (Q6)
15.2 + c(-1,1) * qt(0.975, 29) * 3.4/sqrt(30)
#3) Wheelbase check assumptions (Q7)
library(moments)
10*skewness(motorcycles$Wheelbase)^2
10*abs(kurtosis(motorcycles$Wheelbase)-3)
#4) Left handed gamers (Q11)
#5) standard dev of W (Q12)
w <- c(20, 10, 0)
prob <- c(1/6, 1/6, 2/3)
mu <- sum(w*prob)
sqdev <- (w-mu)^2
var <- sum(sqdev*prob)
sqrt(var)

