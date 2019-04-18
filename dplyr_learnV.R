#functions in dplyr..............it works with dataframe only
# filter() 
# slice()
# select() 
# distinct()
# arrange()
# mutate() (and transmute())
# summarise()
# sample_n() and sample_frac()
# group_by
# pipe introduction
library(dplyr)
v<- c(11,12,13,14,15)
n1<-c(1,1,2,2,5)
c1<-c('a','b','c','d','e')
l1<-c(TRUE,FALSE,FALSE,TRUE,TRUE)
df<-data.frame(n1,c1,l1)
df

#-------------------------------------------------filter
df2<-df[df$n1==1 & df$c1=='a',]
df2

df2<-filter(df,n1==1,c1=='a')
df2

print(slice(df, 1:2))
print(df[1:2,])

#............................................select() will select the column

df3<-select(df,n1,c1)
df3

#...................................distinct: will give all the unique tuples on the basis of column
dis<-distinct(df,df$n1)
dis

#------------------------------------arrange----ordering values
library(nycflights13)
dim(flights)
View(head(flights))
View(arrange(flights,air_time))# by default ascending
View(arrange(flights,desc(air_time)))#need to specify descending

#...................................transmute() adds new column and return new one only
temp_df=mutate(df,new3=n1*5)
temp_df

temp_df=transmute(df,new3=n1*5)
temp_df

#summarise()
# You can use summarise() to quickly collapse data frames into single rows 
# using functions that aggregate results. 
summarise(df,mean(n1))#...................sum

#......................................random sample sample_n and sample_frac 
dftry<-data.frame(1:1000)
dftry
dfsam1<-sample_n(dftry,30)#takes any 30 rows
dfsam1

dfsam2<-sample_frac(dftry,.1)
dfsam2

#........................................group_by
df5<-select(flights,month,distance)
View(df5)

temp<-group_by(df5,month)
View(temp)
grouped<-summarise(temp,sum(distance))
View(grouped)

#---------------------------------------Pipe introduction
df6 <- df5 %>% group_by(month) %>% summarise(sum(distance))
View(df6)
