install.packages("moments")
install.packages("psych")

library(moments)
library(dplyr)
library(psych)

df_numerico <- select_if(Bank_Churn_Messy, is.numeric)

kurtosis(df_numerico,na.rm = TRUE)
kurtosis(Bank_Churn_Messy$EstimatedSalary) # Los salarios estimados de mis clientes se parecen mucho con respecto a la media
kurtosis(Bank_Churn_Messy$Age, na.rm = TRUE)                                          # Toda vez que la kurtosos es mayor que cero. Debido a que 4to momento me da > 0. 
boxplot(Bank_Churn_Messy$EstimatedSalary)
boxplot(Bank_Churn_Messy$Age)
summary(Bank_Churn_Messy)
geometric.mean(Bank_Churn_Messy$CreditScore)

geo_mean = exp(mean(log(Bank_Churn_Messy$CreditScore)))
geo_mean