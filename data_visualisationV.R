library(ggplot2)
View(mtcars)
# Data+Aesthatic+geometries
pl<-ggplot(data=mtcars,aes(x=mpg,y=hp))
pl<-pl+geom_point()
pl

# Data+Aesthatic+geometries +facets
pl<-pl+facet_grid(cyl~.)
pl

# Data+Aesthatic+geometries +facets+statistics
pl<-pl+stat_smooth()
pl
# Data+Aesthatic+geometries +facets+statistics+cordinates
pl<-pl+coord_cartesian(xlim=c(20,35))
pl

#-----------------------------------------------------------------

p2<-ggplot(data=mtcars,aes(x=wt,y=mpg))
p2<-p2+geom_point()
p2

p2<-ggplot(data=mtcars,aes(x=wt,y=mpg))
p2<-p2+geom_point(aes(color=cyl))
p2

p2<-ggplot(data=mtcars,aes(x=wt,y=mpg))
p2<-p2+geom_point(aes(size=factor(cyl)))
p2

p2<-ggplot(data=mtcars,aes(x=wt,y=mpg))
p2<-p2+geom_point(aes(color=cyl))
p2

p2<-ggplot(data=mtcars,aes(x=wt,y=mpg))
p2<-p2+geom_point(aes(size=factor(cyl)),alpha=.3)
p2

p2<-ggplot(data=mtcars,aes(x=wt,y=mpg))
p2<-p2+geom_point(aes(shape=factor(cyl)))
p2

p2<-ggplot(data=mtcars,aes(x=wt,y=hp))
p2<-p2+geom_point(aes(shape = factor(cyl),color=factor(cyl)))
p2

#------------------------------------------------------histogram
library(ggplot2movies)
View(movies)
pl<-ggplot(movies,aes(x=rating))
#default binwidth= range/30
pl<-pl+geom_histogram(color="black", binwidth = 1)+xlab('Movie Ratings')+ ylab('Occurences')
pl

#with color fill
pl<-pl+geom_histogram(color="black", binwidth = 1,aes(fill=..count..))+xlab('Movie Ratings')+ ylab('Occurences')
pl

# Bar graph,  x-axis and y-axis different from count
View(movies)
ggplot(movies,aes(x=rating))+geom_bar()
ggplot(movies,aes(x=rating,y=votes))+geom_bar(stat="identity")



