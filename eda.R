library(ggplot2)

setwd("C:/Users/isaac/OneDrive/Documents/IT Study/Data Analytics/Brighton MSc/Modules/Data Mining and Knowledge Discovery in Data/assessment/adult")

adult<-read.csv("adult.data.imp")
colnames(adult) <- c("age","workclass","fnlwgt","education","education-num","marital-status","occupation","relationship","race","sex","capital-gain","capital-loss","hours-per-week","native-country","income")
boxplot(adult$`education-num`~adult$income)
boxplot(adult$`hours-per-week`~adult$income)

ggplot(adult, aes(x=income, fill=`hours-per-week`)) +
  geom_histogram(binwidth=.5, alpha=.5, position="identity")


dat <- data.frame(xx = c(runif(100,20,50),runif(100,40,80),runif(100,0,30)),yy = rep(letters[1:3],each = 100))

ggplot(adult,aes(x=age)) + 
  geom_histogram(data=subset(adult,income == '<=50K'),aes(y=..count../sum(..count..)*200), fill = "red", alpha = 0.2, binwidth=1) +
  geom_histogram(data=subset(adult,income == '>50K'),aes(y=..count../sum(..count..)*200), fill = "blue", alpha = 0.2, binwidth=1) 

ggplot(adult,aes(x=`fnlwgt`)) + 
  geom_histogram(data=subset(adult,income == '<=50K'),aes(y=..count../sum(..count..)*200), fill = "red", alpha = 0.5, binwidth=100) +
  geom_histogram(data=subset(adult,income == '>50K'),aes(y=..count../sum(..count..)*200), fill = "blue", alpha = 0.5, binwidth=100) 


ggplot(adult,aes(x=`education-num`)) + 
  geom_histogram(data=subset(adult,income == '<=50K'),aes(y=..count../sum(..count..)*200), fill = "red", alpha = 0.5, binwidth=1) +
  geom_histogram(data=subset(adult,income == '>50K'),aes(y=..count../sum(..count..)*200), fill = "blue", alpha = 0.5, binwidth=1) 


ggplot(adult,aes(x=`marital-status`)) + 
  geom_bar(data=subset(adult,income == '<=50K'),aes(y=..count../sum(..count..)*200), fill = "red", alpha = 0.5) +
  geom_bar(data=subset(adult,income == '>50K'),aes(y=..count../sum(..count..)*200), fill = "blue", alpha = 0.5) 



