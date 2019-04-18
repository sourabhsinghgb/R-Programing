# apply()
# lapply()
# sapply()
# tapply()
# mapply()

#-------------------------------------boot start and comparision with looping
plus2<-function(x){
  x=x+2
  return(x)
}
vec<-1:5 #1 2 3 4 5 
for(i in vec){
  result<-plus2(i)
  print(result)
}


v1<-sapply(vec,plus2)# will do this in detail in next video
v1

#--------------------------------------------apply()
#We use apply() over a matrice
plus<-function(x)
{x=x+2
return(x)  
}



m1 <- matrix(C<-(1:10),nrow=2)
m1
#third argument can beBuilt functions like mean, median, 
#sum, min, max and even user-defined functions can be applied>
m1apply <- apply(m1, 2, sum)
m1apply
m1apply <- apply(m1, 1, sum)
m1apply

##----------------------------------------------------------lapply
#l in lapply() stands for list.can be used for other objects like vectors, data frames and lists.
# lapply returns a list

#lapply with vectors
vec<-c(1:10)
lapply(vec,sqrt)

#lapply with dataframes
df<-data.frame('vec1'=c(1:10),'vec2'=c(11:20),'vec3'=c(31,40))
df
lapply(df,max)    

#lapply with list
li<-list(vec,df)
li
lapply(li,max)

#.................................sapply is similar to lapply but returns values as vector
sapply(li,max)
sapply(df,max)
sapply(df,plus2)

#.........................................................tapply
# tapply group a specified data, 
# usually factor levels and then applies the function to it.

df<-mtcars
View(mtcars)
View(mtcars[,c(2,6)])
grouping<-tapply(df$wt,df$cyl,mean)
grouping

##..........................................................mapply()
#mapply is a multivariate version of sapply. It will apply the specified function 
#to the first element of each argument first,followed by the second element, and so on. 

x<-c(1,2,3,4,5)
y<-c(6,7,8,9,10)
result<-mapply(sum,x,y)
result

##................................................anonymous functions
BOD
sapply(BOD,function(x) x+2)
sapply(BOD$Time,function(x) x+2)
