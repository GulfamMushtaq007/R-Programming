
data()
iris
colnames(iris)
summary(iris$Sepal.Length)


a <- 3
b <- 5
c <- 2
d <- (-b + sqrt(b^2-4*a*c)/(2-3*a))
d
#data_generation

n <- 1000
x <- seq(1 , n ,10)
x
log(exp(x))
sd(x)
class(iris)
class(x)
class(iris$Species)

var(iris$Sepal.Length)
str(iris)
names(x)
names(iris)

#subsetting

sl <- iris$Sepal.Length
sl
x <- 7
y <- 6
x < y

z <- 2 ==3
z
#levels


levels(iris$Species)  #categorial veriables

list(iris$Sepal.Length)
 
#matrix
matrix(iris, nrow = 4, ncol = 5)

#data_creation
x <- c(1,2,3,4,5,6)
y <- c(9,8,7,6,5,4)
z <- c('a','b','c','d','e','f')
p1 <- data.frame(x , y, z)
summary(p1)

x <- c('orange'= 2 , 'Mango'=5 , 'peach'=4)
x
summary(x)



#advanced_subsetting
x <- iris[1:50,-(4:5)]   #excluding last column

x
p1[c(1,2)] # select specific cl

#subsetting by categories


subset(iris , iris$Species == 'virginica' | iris$Species == 'setosa')   #selecting two variables
a <- subset(iris, iris$Sepal.Width < 3  |  iris$Sepal.Width > 2.3)
a
help('which')

# to check data inside data_frame
which(iris$Species == "virginica") #at which numbers this data fall

c('virginica') %in% iris$Species 
match(('setosa') , iris$Species)

match(c('virginica' , 'setosa') , iris$Species)

which(iris$Species %in% c('virginica','setosa'))


x <- matrix(1:120,12,10)

image(x)

install.packages('corrplot')
library(corrplot)
data("iris")
x <- iris[1:150,-5]



z <- cor(x)
z
corrplot(z , method = 'square')



Another method of making correlation plot



install.packages('PerformanceAnalytics')
library(PerformanceAnalytics)
chart.Correlation(x , method = 'pearson' , histogram = T )












































