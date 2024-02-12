#Man Whitney test
x = p_data$`Funding Round`
y = p_data$`No. of Investors`
wilcox.test(x,y, "two.sided", 0.05)

## Box Cox Transformation
library(MASS)
boxcox(lm(p_data$`Years in work`~ 1))
new1 = log(x)    # Transformed data
hist(new1)

shapiro.test(new1)
qqnorm(new1)

boxcox(lm(p_data$`Funding Amount in $`~ 1))
new2 = log(x)    # Transformed data
hist(new2)

shapiro.test(new2)
qqnorm(new2)

boxcox(lm(p_data$`Funding Amount in $`~ 1))
new2 = log(x)    # Transformed data
hist(new2)

shapiro.test(new2)
qqnorm(new2)

boxcox(lm(p_data$`Funding Round`~ 1))
new3 = log(x)    # Transformed data
hist(new3)