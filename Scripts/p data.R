p_data <- read_excel("C:/Users/Owner/Desktop/p data.xlsx")
y=p_data$`Unicorn or not`
x1=p_data$`Years in work`
x2=p_data$`Funding Round`
x3=p_data$`No. of Investors`
train=data.frame(y,x1,x2,x3)
model1=glm(y~x1+x2+x3,family="binomial")
test=train
n=nrow(test)
predicted_prob=predict(model1,test,type='response')
predicted=ifelse(predicted_prob<0.5,0,1)
actual=y
which(actual=predicted)
cm=table(actual,predicted)
acc_rate=sum(actual==predicted)/n
err_rate=1-acc_rate
sensitivity=cm[1,1]/sum(cm[1,])
recall=sensitivity
specificity=cm[2,2]/sum(cm[2,])
precision=cm[1,1]/sum(cm[,1])
