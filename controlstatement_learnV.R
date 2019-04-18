#-----------------------------------------using if and else .....else if
x<-9
y<-3

if(x<6){#false
  print('low')
}else{#.........................in one line else error
  print('high')
 }
#----------------&
if(x>3 & y<9){#...............................  &      
  print('yes')
}else{
  print('no')
}
#------------------------------------------------for loop
vec<-c(4,5,6,7,8)
for(i in vec){#------i as value
  print(i)
}
for(i in 1:length(vec)){#------i as index 1 2 3 4 5
  print(vec[i])
}

mat<- matrix(1:10,nrow=2,byrow=TRUE)
mat
for(i in 1:nrow(mat)){
  for(j in 1:ncol(mat)){
    cat(mat[i,j])
  }
  cat('\n')
}

#-----------------------------------------------while
vec<-c(4,5,6,7,8)
i<-1
while(i < length(vec)){
  print(vec[i])
  i=i+1#i++
}
wins <- 0
while (wins < 10){
  print ("Does not make playoffs")
  wins <- wins + 1}

#-------------------------------------------break/next
x <- 1:5
for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}

x <- 1:5
for (val in x) {
  if (val == 3){
    next
  }
  print(val)
}

#-----------------------------------repeat loop
x <- 1
repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}

