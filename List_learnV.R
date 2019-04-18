#..................................... creating a list

v<-c(1,2,3,4,5)
df<-data.frame(v,6:10)
df
mat<-matrix(11:20,nrow = 2,byrow = TRUE)
mat
li<-list(v,df,mat)
li
#............................................naming object of list

li2<-list('temp'=v,'student'=df,'stock'=mat)
li2
#.............................................accessing elements

li2$stock#access object
li2[[3]][1,2:3]
li2[1]#access object
li2[[1]][1]#access element at object
li2[[2]][,1]
li2['stock']
li2[['mat']][1,2:4]