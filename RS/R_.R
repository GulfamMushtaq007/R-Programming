x <- 1:5 
y <- 6:10
plot(x,y)
?plot
ls()

a = c(1,2,3,43,4,4)
b <- 87:900
b <- seq(87,900,6)
b <- rep(78,7)
b <- rep('the',7)
b <- rep(1:8,7)
b <- rep(seq(65,87,.8),7)
b 
# same length vectors can be added,subtracted,multiplied and divided
x <- 1:5
y <- 6:10
x + y
x - y
x*y
x/y

#extraction of desired elements
x 
x[4]
x[1]
x[0]
x[-2]
x[-c(1,5)]
x[x>4]

#matrix


m_1 <- matrix(c(1,2,3,3,2,1,1,2,2) , nrow = 3, byrow = FALSE) 
m_2 <- matrix(c(34,76,45948,84,874,938), ncol = 2, byrow = TRUE)
m_2[1,2]
m_1[1,c(1,2)]
m_1[,1]

#can be added,subtracted,multiplied and divided
m_1 * 10
m_1 /23
install.packages('readxl')
library(readxl)
x <- read.csv(file.choose())
data(iris)
names(iris)
mean(iris$Sepal.Length)
iris$Sepal.Length
#attaching data
attach(iris)
class(iris)

#checking data types
class(Sepal.Length) 
class(Species)
levels(Species)
summary(iris)
 
#attaching factors to numric variables
x <- c(0,1,1,1,0,0,0,1,1)
class(x)
x <- as.factor(x)
class(x)
summary(x)


dim(iris)  # no of rows and columns
length(iris)  # no of variables
#subsetting data

Sepal.Width[11:20]
iris[1:20, ]
#mean of any specific variable
mean( Sepal.Width [Species=='setosa'])

q1 <- iris[Species == 'setosa' ,]
q2 <- iris[Species == 'setosa' & Petal.Width > .4,1]
q2


#logic commands
a <-Petal.Width[1:5]
b <- as.numeric(a > .1)
b

#appending column to existing data
c <- cbind(a,b)

#working directory 
getwd()
setwd("C:/Users/Gulfam/Desktop/R Prog")
save.image('a.Rdata')
rm(list = ls())   #clearing environment

ls()
load('a.Rdata')  #bringing previous session
q()

#bar_chart and pie chart

data("iris")
#frequency table
a <- table(iris)
a

barplot(iris$Sepal.Length , names.arg = 'Sepal Length' , legend.text = 'SL', horiz = T , density = NULL , angle = 95)



boxplot(iris , las = 1 , main = 'Plot')

boxplot(iris$Species == 'virginica'  , iris$Species == 'setosa')

boxplot(iris$Sepal.Length > 5 , iris$Sepal.Width > 2.7)



