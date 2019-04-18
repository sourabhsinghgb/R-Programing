# Creating matrix in different ways
# Looping 
# Naming Matrix's Elements
#  Element Accessing(indexing and slicing)
# Matrix Operations(mul,/,+,-rowsum,^,comparision,%*%,rowsums,rowmeans)
# Extending Matrix(rbind,cbind)

#------------------------------------martix

mat<-matrix(1:10,nrow=2,byrow=TRUE)
mat

mat2<-matrix(c(2,4,5,6),nrow=2)
mat2

v1<-c(1,2,3,4)
v2<-c(6,7,8,9)
mat3<-matrix(c(v1,v2),nrow=2)
mat3

#[,1]
#[2,]
#--------------------------------------------------# Naming Matrix's Elements

stock1<-c(200,210,205,207,210)
stock2<-c(300,310,305,307,310)
stock.matrix<-matrix(c(stock1,stock2),nrow=2,byrow=TRUE)
stock.matrix
rownames(stock.matrix)<-c('comp1','comp2')
colnames(stock.matrix)<-c('mon','tue','wed','thu','fri')
stock.matrix

#--------------------------------------------------- Element Accessing(indexing and slicing)
#this is again a trial 
stock.matrix[1,1]
stock.matrix[1,]
stock.matrix[,1]
stock.matrix[,1:3]
stock.matrix[1,1:3]
stock.matrix[,'mon']

#--------------------------------------------------Matrix Operations(mul,/,+,-rowsum,^,comparision,%*%,rowsums,rowmeans)
mat4<-matrix(1:6,nrow=2,byrow=TRUE)
mat4
mat5<-matrix(1:6,nrow=2,byrow=TRUE)
mat5
mat4+mat5
mat4*mat5
mat5/mat4
mat4*2
mat4^3
mat4>3
rowMeans(mat4)
rowSums(mat4)

#----------------------------------# Extending Matrix(rbind,cbind)

stock1<-c(200,210,205,207,210)
stock2<-c(300,310,305,307,310)
stock.matrix<-matrix(c(stock1,stock2),nrow=2,byrow=TRUE)

rownames(stock.matrix)<-c('comp1','comp2')
colnames(stock.matrix)<-c('mon','tue','wed','thu','fri')
stock.matrix
mean<-rowMeans(stock.matrix)
mean
stock.matrix<-cbind(stock.matrix,mean)
stock.matrix
sum<-colSums(stock.matrix)
sum
stock.matrix<-rbind(stock.matrix,sum)
stock.matrix