#...........................................creating a function

#...................................simple one
noreturn<-function(x){
  x=x+2
  print(x)
}
noreturn(1)

#-------------------------------------with return
plus2<-function(x){
  x=x+2
  return(x)
}

t<-plus2(1)
print(t)

vec<-1:5 #1 2 3 4 5 
for(i in vec){
  result<-plus2(i)
  print(result)
}

#--------------------------------------sapply

v1<-sapply(vec,plus2)# will do this in detail in next video
v1

##................................. with default values (it can be from right to left only)
default<-function(x,y=20,z=10){
  print(x)
  print(y)
  print(z)
}
#default(3)
default(4)

#.....................................functions with variable arguments
flexi<-function(...){
  li<-list(...)
  print(li[[1]])
}
flexi(2)

#------------------------------------------------local and global data
v <- 11
stuff <- 12
fun <- function(){
  v<-50 
  stuff <<- 60# check the << will access the global data
  print(v)
  print(stuff)
}
fun()
print(v) 
print(stuff)
