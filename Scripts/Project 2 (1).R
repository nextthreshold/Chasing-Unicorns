
## Box Cox Transformation
library(MASS)
boxcox(lm(p_data_1$`Years in work`~ 1))
new1 = log(x)    # Transformed data
hist(new1)

shapiro.test(new1)
qqnorm(new1)

boxcox(lm(p_data_1$`Funding Amount in $`~ 1))
new2 = log(x)    # Transformed data
hist(new2)

shapiro.test(new2)
qqnorm(new2)


boxcox(lm(p_data_1$`Funding Round`~ 1))
new3 = log(x)    # Transformed data
hist(new3)

boxcox(lm(p_data_1$`No. of Investors`~ 1))
new4 = log(x)    # Transformed data
hist(new4)
shapiro.test(new2)
qqnorm(new2)

## Box plot

boxplot(p_data_1$`Years in work`, main = "Years in work")
boxplot(new1, main  = "Years in work (Transformed)")

boxplot(p_data_1$`Funding Amount in $`, main = "Funding Amount in $")
boxplot(new2, main  = "Funding Amount in $ (Transformed)")

boxplot(p_data_1$`Funding Round`, main = "Funding Round")
boxplot(new3, main  = "Funding Round (Transformed)")

boxplot(p_data_1$`No. of Investors`, main = "No. of Investors")
boxplot(new4, main  = "No. of Investors(Transformed)")

# Correlation matrix
data = p_data_1[2:6]
cor(data)

## Multiple Regression

y = p_data_1$`Turnover in $`
x1 = p_data_1$`Years in work`
x2 = p_data_1$`Funding Amount in $`
x3 = p_data_1$`Funding Round`
x4 = p_data_1$`No. of Investors`
x5 = p_data_1$`Unicorn or not`

shapiro.test(y)
m = lm(new5~new1+new2+new3+new4)
summary(m)
boxcox(lm(p_data_1$`Turnover in $`~ 1))
new5 = log(y)    # Transformed data
hist(new5)

shapiro.test(new5)
