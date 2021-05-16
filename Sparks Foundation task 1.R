#import data given from the task 
Data = read.csv("http://bit.ly/w-data")
head(Data)

#plotting the distribution of scores
plot(Data$Hours,Data$Scores,main="scatter plot",xlab="Hours studied",ylab="Percentage Scored")
cor(Data$Hours,Data$Scores)

#to build regression model
model=lm(Scores~Hours,data=Data)
model

#output using summary function
summary(model)

#plotting the regression line
abline(model,col="Blue")

#to compare actual and predicted value
Data$predicted = fitted(model)
Data$residual = residuals(model)
Data

#to predict output for given data
p = data.frame(Hours=9.25) 
predict(model,p)

