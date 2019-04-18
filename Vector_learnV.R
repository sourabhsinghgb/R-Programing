# Creation of Vectors
# Printing a Vector
# Looping a Vector
# Naming Vector's Elements
# Vector Element Accessing(indexing and slicing)
# Vector Operations (addition+,substraction-,division/,prod,sum,var,sd,max,min)
# Extending Vectors

#----------------------------creation of vector

vec<-c(1,4,6,7)
vec

vec2<-1:10
vec2

vec3<-seq(10,1,-2)
vec3

#-----------------------------printing
print(vec3 )
cat("vector1 = ", vec2, "vector2 = ", vec3, "\n")
#--------------------------------looping
vec4<-c(11,12,13,14,15)

for(i in vec4){
  print(i)
}

for(i in 1:length(vec4)){#i in 1:5      1,2,3,4,5
  print(vec4[i])
}

#--------------------------------Naming of vector

temp<-c(24,26,29,22,30,38,37)
temp
names(temp)<-c('mon','tue','wed','thu','fri','sat','sun')
temp
#----------------------------------Element accessin using indexing and slicing

temp[1]
temp[5]
temp['mon']
temp['thu']
temp[c(1,3)]
temp[c('mon','wed')]
#-----------------------slicing
temp[1:3]
temp[2:7]
# Vector Operations (addition+,substraction-,division/,prod,sum,var,sd,max,min)
vec10<-c(1,2,3,4,5)
vec11<-c(6,7,8,9,10)
vec10-vec11
max(vec11)
#------------------------------------------# Extending Vectors
vec11[6]<-11
vec11

