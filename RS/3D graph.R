install.packages('ggplot2')
library(ggplot2)
install.packages('gganimate')
library(gganimate) 
install.packages('gifski')
install.packages('av')
library(gifski)
library(av)
install.packages('gapminder')
library(gapminder)


ggplot(gapminder , aes(gdpPercap,lifeExp , size=pop , col=country)) + geom_point(show.legend = F , alpha=.8) +
  scale_color_viridis_d()+
  scale_size(c(1,11)) +
  scale_x_log10() + labs(x='GDP per Capita', y='Life Expectency' ) +
  ggsave('x.jpeg')






#3D graphs
install.packages('plot3D')
library(plot3D)
data(iris)

x <- sep.l <- iris$Sepal.Length
y <- pet.l <- iris$Petal.Length
z <- sep.w <- iris$Sepal.Width

scatter3D(x,y,z,clab = c('Sepal','Width(cm)') )

scatter3D(x,y,z, colvar = NULL , col='red', pch= 89,cex= .4)

 
#full_box

scatter3D(x,y,z, bty = 'f' , colkey = FALSE, main = 'bty =f', phi = 90)  

#colors
scatter3D(x,y,z, pch=18, bty="u", colkey=FALSE,
          main = "bty = u" , col.panel = '#5DADE2' , expand = .4,
          col.grid = 'darkblue')

scatter3D(x,y,z, bty = 'g' , pch = 18, col = gg.col(100))

scatter3D(x , y, z, bty = 'g', pch = 18, 
          col = ramp.col(c('blue','yellow','red')))

#col_variable


scatter3D(x , y, z , bty = 'g', pch=18,
          col.var = as.integer(iris$Species),
          col = c('red','blue','green'),
          pch=18 , ticktype='detailed',
          colkey= list(at = c(2 ,3 ,4), side = 1,
                       addlines = TRUE , length = .5,width = .5,
                       labels= c('setosa', 'versicolor', 'virginica')))
#labels
scatter3D(x,y,z , theta = 25, phi = 25,
          main = 'Iris Data' , xlab= 'Sepal length',
          ylab = 'Petal length', zlab= 'Sepal width') 
scatter3D(x,y,z , phi = 0 , bty = 'g', 
          pch = 20, cex= 2, ticktype = 'detailed')
#text_graph
 text3D(x,y,z, labels= rownames(iris),
        add = TRUE , colkey=FALSE ,cex = 0.5)
 
 #line_plot
 scatter3D(x,y,z, phi = 0 , bty = 'g',
           type = 'h' , tickype = 'detailed', lwd = 2)
 
 #line plus point
 
 scatter2D(x,y,z, phi = 0 , bty = 'g',
           type = 'b' , tickype = 'detailed', lwd = 2,
           pch = 20, cex =c(.5 , 1, 1.5))
 
 
 #Hist 3D  (numeric data)
 data("VADeaths")

 hist3D(z=VADeaths , scale=FALSE, expand = .01 , bty = 'g', phi = 15,
        col = 'blue', border = 'black', shade = .2, ticktype = 'detailed', ltheta = 90, space = .3, d=6) 

 #all numeric data
install.packages('plotly')
library(plotly) 
p <- plot_ly(z = volcano , type = 'surface') 
help(plotly) 


# Interactive 2D and 3D plots 
install.packages('ggplot2')
library(ggplot2) 
 
ggplot(iris , aes(iris$Sepal.Width, iris$Sepal.Length , col=iris$Species)) + geom_point()

install.packages('plotly')
library(plotly)

plot_ly(z = volcano) %>% add_surface()   # ctrl+shift+M = %>%(phi = addition to code)
plot_ly(z = volcano , type = 'surface')

#different_surfaces
x = c(1,2,3,4,5)
y = c(1,2,3,4,5) 
z = rbind(       #rbind = rowbind
  c(0,1,0,1,1),
  c(1,0,1,0,1),
  c(0,1,0,1,0),
  c(1,0,1,0,1),
  c(0,1,0,1,0))   
p1 <- plot_ly(
  type = 'surface',
  contours = list(x = list(show=T,
                           start = 1.5,
                           end = 2,
                           size = .04,
                           color = 'red'),
                  z = list(show = T,
                           start = .5,
                           end = .8,
                           size = .05)) ,
                  x = ~x,
                  y = ~y,
                  z = ~z)
p1
 

#scatter_plot
p1 <- plot_ly(data = iris, x = ~Sepal.Length , y = ~Petal.Length, 
              marker = list(size = 15,   #marker = attributes of points 
                            color = 'red',
                            line = list(color ='blue' ,
                                        width = 3)))
p1

  
#line plus scatter

x_0 <- rnorm(100,mean = 5)
x_1 <- rnorm(100,mean = 0) 
x_2 <- rnorm(100,mean = -5)
x <- c(1:100)
d1 <- data.frame(x , x_1, x_2)
fig <- plot_ly(d1 ,x = ~x)
fig <- fig %>% add_trace(y =~x_1,name = 'x0', mode='lines')       
fig <- fig %>% add_trace(y =~x_0,name = 'x1', mode='lines + markers')       
fig <- fig %>% add_trace(y =~x_2,name = 'x2', mode='markers')       
fig

c <- data(iris)



a <- plot_ly(iris , x = ~Petal.Width )
a <- a %>% add_trace(y = ~Species , mode= 'lines plus markers')
a
s <- iris[(1:50),4]
s
ve <- iris[(51:100),4]
ve
vi <- iris[(101:150),4]
vi
pw <- iris[(1:50),4]


a <- plot_ly(iris , x = ~pw )
a <- a %>% add_trace(y = ~s , name = 'setosa', mode= 'lines plus markers')
a <- a %>% add_trace(y = ~ ve, name = 've', mode = 'lines')
a <- a %>% add_trace(y = vi , name = 'vi', mode = ' markers')
a

library(plotly)

d <- diamonds[sample(nrow(diamonds), 1000), ]

fig <- plot_ly(
  d, x = ~carat, y = ~price,
  color = ~carat, size = ~carat
)

fig

library(plotly)

labels = c('Oxygen','Hydrogen','Carbon_Dioxide','Nitrogen')
values = c(4500, 2500, 1053, 500)

fig <- plot_ly(type='pie', labels=labels, values=values, 
               textinfo='label+percent',
               insidetextorientation='radial')
fig

#bar_plot
install.packages('plotly')
library(plotly)
x <- c('girrafes', 'oranges', 'monkeys')
y <- c(20,14,23)
plot_ly(type='bar' , x=x,y=y, color = x)

#iris

plot_ly(iris , x = ~Sepal.Width , y = ~Sepal.Length , type = 'bar', color  = ~Species , width = 2)

#mean and sd by grouping data
dt <- group_by(iris , Species) %>% 
  summarise(means = mean(Sepal.Length))
dt
plot_ly(data = dt , type = 'bar', x = dt$Species , y = dt$means , color = dt$Species)


