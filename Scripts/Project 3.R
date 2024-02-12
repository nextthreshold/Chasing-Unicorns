new1 = log(p_data_1$`Years in work`)
new2 = log(p_data_1$`Funding Amount in $`)
new3 = log(p_data_1$`Funding Round`)
new4 = log(p_data_1$`No. of Investors`)
new5 = log(p_data_1$`Turnover in $`)

m = lm(new5~new1 +new2+ new3+ new4)
summary(m)

par(mfrow=c(2,2))
plot(m)

both<-step(m,direction="both", trace=1)

