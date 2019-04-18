#...................................creating dataframes
n1<-c(1,2,3,4,5)
c1<-c('a','b','c','d','e')
l1<-c(TRUE,FALSE,FALSE,TRUE,TRUE)
df<-data.frame(n1,c1,l1)
df
head(df)#top 6
tail(df)#bottom6
head(df,2)#top2
tail(df,2)
dim(df)
#-------------------------------------------selection and indexing
#df[rows,columns]
df[1,]
df[,1]
df[1,1]
df[1:2,1:2]
df[1,1:2]
df[,1]
df$n1
df[df$n1>1,]
df[df$n1>1 & df$c1=='d',] #conditional rows from dataframes
rownames(df)<-c('x1','x2','x3','x4','x5')#-----------------------------naming
df
#............................................adding rows/column rbind/cbind
x6<-c(6,'e',FALSE)
df<-rbind(df,x6)
df
#.........................................merging in merge.R

df1 = data.frame(CustomerId = c(1:6), Product = c(rep("Toaster", 3), rep("Radio", 3)))
df2 = data.frame(CustomerId = c(2, 4, 6), State = c(rep("Alabama", 2), rep("Ohio", 1)))
df1
df2
#inner join
merge(df1, df2, by = "CustomerId")
#Left outer: 
merge(x = df1, y = df2, by = "CustomerId", all.x = TRUE)
#right outer: 
merge(x = df1, y = df2, by = "CustomerId", all.y = TRUE)
#outer join
merge(x = df1, y = df2, by = "CustomerId", all = TRUE)
#....................................................looping with data frame
df

for(i in df$n1){#columnwise
  print(i)}
for (i in 1:length(df$n1)){#rowwise 1,2,3,4,5,6
  print(df[i,])
}