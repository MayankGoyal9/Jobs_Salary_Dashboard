gc()
library(dplyr)
library(readr)
library(readxl)
library(writexl)

df1<-read_excel("C:\\Users\\mayan\\Desktop\\tempBI\\data1.xlsx")
str(df1)
df2<-read_excel("C:\\Users\\mayan\\Desktop\\tempBI\\data2.xlsx")
str(df2)


finaldf<-merge(df1,df2,by="index")
str(finaldf)

write.csv(finaldf,"C:\\Users\\mayan\\Desktop\\tempBI\\finaldf.csv")
df=read.csv("C:\\Users\\mayan\\Desktop\\tempBI\\finaldf.csv")
df

colnames(df)
str(df)
df=df[,c(-1,-2)]
str(df)
df
write.csv(df,"C:\\Users\\mayan\\Desktop\\tempBI\\finaldf.csv")

print(df)
head(df,10)

lapply(df,function(x) { length(which(is.na(x)))})

#df <- na_if(df,"")
df


df$salary[is.na(df$salary)]<-mean(df$salary,na.rm=TRUE)

lapply(df,function(x) { length(which(is.na(x)))})

write.csv(df,"C:\\Users\\mayan\\Desktop\\tempBI\\finaldf.csv")
