install.packages("ggplot2")
library(ggplot2)
data()
View(BOD)
#View(mtcars)
#nrow(mtcars)
#ncol(mtcars)
#str(mtcars)     
BOD$demand >- as.numeric(BOD$demand)#changing the type of variables.....numerical,date,etc...
BOD$demand | BOD$Time >- as.numeric(BOD$demand)
          
#always name data in small alphabets without any spaces and special character

# export data sets into excel file....
install.packages("write.xl")
library(writexl)
write_xlsx(BOD,path = ".....")

#ggplot tricks and tips

data(trees)
ggplot(trees , aes(trees$Girth , trees$Height)) + geom_point() + geom_smooth(method = "lm")
       
ggplot(trees , aes(trees$Girth , trees$Height)) + geom_line() + geom_point() + geom_smooth(method = 'lm') + 
  labs(title = "Trees",x = "Girth (cm)", y = 'Height(cm)')
plot1 <- ggplot(trees , aes(trees$Girth , trees$Height)) + geom_line() + geom_point() + geom_smooth(method = 'lm') + 
  labs(title = "Trees",x = "Girth (cm)", y = 'Height(cm)')
plot1 + ggsave('plot1.tiff')
plot1 + ggsave('plot1_3.tiff', units = 'in', width = 8, height = 6, dpi = 300, compression = 'lzw')
plot1 + coord_flip()
x <- cars

#scatter_plot
ggplot(x,aes(x$speed,x$dist)) + geom_point() + geom_smooth(method = "lm" , se = T,level = .95)               #se = standard error 

#scatter_plot with multiple lines
#
ggplot(Orange,aes(Orange$age,Orange$circumference, col= Orange$Tree))+geom_point(size=5, alpha=.75,shape=Orange$Tree)+
  labs(title = "Orange",x="Age", y="Circumference",col="Tree")+ geom_line(aes(linetype = Orange$Tree),size=1)


#line_plot
ggplot(Orange,aes(Orange$age,Orange$circumference, col= Orange$Tree))+geom_line(aes(linetype = Orange$Tree),size=1)+
  labs(title = "Orange",x="Age", y="Circumference",col="Tree")


#box_plot
ggplot(Orange,aes(Orange$age,Orange$circumference, fill = Orange$Tree)) + geom_boxplot()+
  labs(title = "Orange",x="Age", y="Circumference",col="Tree")



#bubble_plot


install.packages('viridis')
library(viridis)
x = quakes
samlpe_x <- x [seq(from=1,to=1000,by=10),]
ggplot(samle_x , aes(samle_x$lat , samle_x$long)) + geom_point(aes(size=samle_x$mag , col=mag))  + guides(size=FALSE)


ggplot(samle_x , aes(samle_x$lat , samle_x$long)) + geom_point(aes(size=samle_x$mag , col=mag))  + guides(size=FALSE) + 
  scale_color_viridis_b(option = "B") +
  scale_size_continuous(range = c(1,9)) + labs(title = "quakes",x="lat", y="long") + 
  ggsave("Quakes.tiff")



library(ggplot2)
#violin_plot

data('diamonds')

x <- diamonds

nrow(x)
head(x)
str(x)
sample_x <- x[seq(1,50000,100),]
nrow(sample_x)
ggplot(sample_x,aes(cut,price,col=cut))+geom_violin() + geom_boxplot (width=0.2) + geom_jitter(size=.6) + facet_wrap(~cut)
#heat_maps

x<-iris
install.packages('reshape')
library(reshape)

x1<-melt(x)    #stacking of data
 
ggplot(x1,aes(x1$Species , x1$variable , fill=x1$value)) + 
  geom_tile()+
  scale_fill_gradient(low = "green" , high = 'red')
?reshape
#marginal_plots
library(ggplot2)   
install.packages('ggExtra')
library(ggExtra)
data(mpg)
x <- mpg
ggplot(x,aes(cty, hwy)) +geom_count() + geom_smooth(method = 'lm')  
 
p1 <- ggplot(x,aes(cty, hwy)) +geom_count() + geom_smooth(method = 'lm') 
p1
ggMarginal(p1,type='densigram',fill='transparent')
 
library(ggplot2)

#Animated Graphs in Rstudio
library(ggplot2)
install.packages('gganimate')
library(gganimate) 
install.packages('gifski')
install.packages('av')
library(gifski)
library(av)
install.packages('gapminder') #data
library(gapminder)
library(ggplot2)
ggplot(gapminder , aes(gdpPercap,lifeExp)) + geom_point()

ggplot(gapminder , aes(gdpPercap,lifeExp , size=pop)) + geom_point()

ggplot(gapminder , aes(gdpPercap,lifeExp , size=pop , col=country)) + geom_point(show.legend = F , alpha=.8)

#changing_color
install.packages('viridis')
library(viridis)
install.packages('ggplot2')
library(ggplot2)
AN1 <- ggplot(gapminder , aes(gdpPercap,lifeExp , size=pop , col=country)) + geom_point(show.legend = F , alpha=.8) +
  scale_color_viridis_d()+
  scale_size(c(1,11)) +
  scale_x_log10()  + labs(title = 'Year: {frame_time}', x="GDP Per Capita", y= "life Expectency")+ transition_time(year) + shadow_wake(wake_lenght=.1 , alpha=F)+#for tails+
  ease_aes("linear") 
AN1
animate(AN1, duration = 5, fps = 20, width = 200, height = 200, renderer = gifski_renderer())
anim_save("output.gif")

#line_plot
install.packages('gganimate')
library(gganimate) 
install.packages('gifski')
install.packages('av')
library(gifski)
library(av)
 
data()
p<- ggplot(airquality, aes(Day , Temp, group=Month , col= factor(Month))) + 
  geom_line() + 
  scale_color_viridis_d() +
  labs(x='Day of month' , y = 'Temp') +
  theme(legend.position = 'top')
p
p1 <- p + transition_reveal(Day) + geom_point()
animate(p1, duration = 5, fps = 20, width = 200, height = 200, renderer = gifski_renderer())
anim_save("output.gif")














