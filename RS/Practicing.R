iris
plot(iris$Sepal.Length) 

with(iris, plot(iris$Sepal.Length , iris$Sepal.Width))

x <- 1:10
y <- seq(1,20,2)

plot(x , y , type = 'l')
plot(x , y , type = 'o')
plot(x , y , type = 'p')
plot(x , y , type = 'b')
plot(x , y , type = 'c')
x <- seq(0,8,1)
hist(iris$Sepal.Length , breaks = x)

hist(iris$Sepal.Length , breaks = x , freq = FALSE)

dens <- density(iris$Sepal.Length)
dens
plot(dens)


hist(iris$Sepal.Length, breaks = x , freq = FALSE) 
lines(dens)


boxplot(iris$Sepal.Length , ylab = 'SL')
boxplot(iris$Sepal.Length ~ iris$Sepal.Width*iris$Species , cex.axis = .7)


install.packages('vioplot')
library(vioplot)

 vioplot(iris$Sepal.Length ~ iris$Species , col = c('blue','grey','red'))


dotchart(iris$Sepal.Length , groups = iris$Species)

plot(iris)


coplot(iris$Sepal.Length~iris$Sepal.Width | iris$Species , overlap = 0 )

coplot(iris$Sepal.Length~iris$Sepal.Width | iris$Petal.Length , overlap = 0 )

coplot(CO2$conc ~ CO2$uptake | CO2$Treatment , overlap = 0)

install.packages('lattice')
library(lattice)

histogram(~iris$Sepal.Length , type = 'count' , data = iris)

bwplot(iris$Sepal.Length ~ iris$Sepal.Width ,)

dev.off()   

dotplot(iris$Sepal.Width ~ iris$Species)

histogram(~iris$Sepal.Length | iris$Species , layout = c(3,1))


bwplot(iris$Sepal.Length ~ iris$Sepal.Width | iris$Species)

xyplot(iris$Sepal.Length ~ iris$Sepal.Width | iris$Petal.Length*iris$Species)



par(mar = c(5.1, 4.1, 4.1, 2.1))

plot(iris$Sepal.Length , iris$Sepal.Width , xlab = 'sw',ylab = expression(paste('pl(cm'^'2' , ')')),
     xlim = c(4,8.5), ylim = c(1,5) , bty = 'l')

#Use of dplyr function:

library(dplyr)
glimpse(iris)

x <- iris %>% 
  group_by(Species) %>% 
  summarise(avg = mean(Sepal.Length)) %>% 
  arrange(avg)


mtcars
arrange(mtcars , mtcars$mpg)

arrange(mtcars , desc(mtcars$mpg))

rename(mtcars , va = vs)

##subsetting
# filter
attach(iris)
x <- filter(iris , Sepal.Length>7 )
x
#distinct

x <- distinct(iris)

#sample_frac
x <- sample_frac(iris ,0.1,replace = F)


#slice
x <- slice(iris , 10:15)

#top_n
x <- top_n(iris , 3, Sepal.Width)

#selection


x <- select(iris , contains('Sep'))
x

x <- select(iris , ends_with('es'))
x

x <- select(iris, everything())
x


x <- select(iris , matches('.s'))
x

x <- select(iris , num_range('x' , 1:5))
x
library(dplyr)

iris

histogram(~iris$Sepal.Length | iris$Species , layout=c(1,3))

plot(iris$Sepal.Length,iris$Sepal.Width , type = 'n', bty='l',ylim = c(1.5,5.5), overlap = F)
points(x = iris$Sepal.Length[iris$Species=='setosa'],
       y = iris$Sepal.Width[iris$Species=='setosa'],
       pch = 16, col = 'deeppink3')
points(x = iris$Sepal.Length[iris$Species=='virginica'],
       y = iris$Sepal.Width[iris$Species=='virginica'],
       pch = 16, col = 'yellowgreen')
points(x = iris$Sepal.Length[iris$Species=='versicolor'],
       y = iris$Sepal.Width[iris$Species=='versicolor'],
       pch = 16, col = 'deepskyblue')

legend(x = 5,y=5.5,col = c('deeppink3','yellowgreen','deepskyblue'),
       pch = c(16,16,16), horiz = T,
       legend = c('setosa','virginica','versicolor'),
       bty = 'n',title = 'species')
labels(xlab = 'Sepal Length(cm)',ylab = 'Sepal Width',title='Iris',subtitle = 'Species in iris')


par(mfrow = c(1,2))
plot(flower$weight,flower$shootarea)
boxplot(flower$shootarea~flower$nitrogen , cex.axis = .6)




par(mar = c(4,4,0,0))
plot(flower$weight,flower$shootarea)
par(mar = c(4,0,0,0))
boxplot(flower$shootarea,frame=F,axes = F)
par(mar = c(0,4,0,0))
boxplot(flower$weight,horizontal = T,frame=F,axes=F)






par(mar = c(2, 2, 0, 0))
plot(flower$weight, flower$shootarea,
     xlab = "weight (g)", ylab = "shoot area (cm2)")
par(mar = c(0, 2, 0, 0))
boxplot(flower$weight, horizontal = TRUE, frame = FALSE,
        axes =FALSE)
par(mar = c(2, 0, 0, 0))
boxplot(flower$shootarea, frame = FALSE, axes = FALSE)

install.packages('palmerpenguins')
library(palmerpenguins)

install.packages('ggplot2')
library(ggplot2)

ggplot2(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) + geom_point()

   






























































