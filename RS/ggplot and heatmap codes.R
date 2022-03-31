library(ggplot2)

data('cars')

#scatter plot
ggplot(cars,aes(speed,dist))+geom_point()+geom_smooth(method = "lm",se=T,level=.7)

#with multile lines
data('orange')
data('DNase')

ggplot(DNase,aes(conc,density,color=Run))+geom_point(size=4,shape=19)+geom_smooth(method = 'lm')


#separated by shape
ggplot(DNase,aes(conc,density,color=Run))+geom_point(size=3)+geom_line(linetype=5,size=1)+labs(x="Concentration",y="Density",title="Elisa")
ggsave('geompoint.jpeg')

#yitter_plot

install.packages("ggplot2")
library(ggplot2)
data('rock')
r_sample <- rock[seq(1,48,2),]
ggplot(r_sample,aes(area,shape,color=area))+geom_jitter()




#violin plot 

library(ggplot2)

data('diamonds')
d_sample <- diamonds[seq(1,53000,100),]

p <- ggplot(diamonds,aes(cut,price,color=cut))+geom_violin()
p + geom_boxplot(width=0.1)+geom_jitter(size=0.1)
ggsave('plot.jpeg','C:\\Users\\Gulfam\\Desktop\\R Prog')


# heatmaps
#1 
x <- as.matrix(mtcars)
heatmap(x,scale = "column")

#2 with gplots
install.packages('pheatmap')
library(pheatmap)

pheatmap(x,scale = 'column', cutree_rows = 3,cutree_cols = 4)
#withggplots
library(ggplot2)
install.packages('reshape')
library(reshape)
y <- melt(iris)
ggplot(y,aes(Species,variable,fill=value))+geom_tile()+scale_fill_gradient(low='green',high = 'red')

