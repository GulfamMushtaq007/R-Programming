install.packages('readxl')

boxplot(flower$weight~flower$nitrogen, data=flower, ylab = 'weight',xlab = 'nitrogen level')

flower$nitrogen <- factor(flower$nitrogen, levels = c('low','medium','high'))

boxplot(flower$weight~flower$nitrogen, data=flower, ylab = 'weight',xlab = 'nitrogen level')

boxplot(flower$weight~flower$nitrogen*flower$block, data=flower, ylab = 'weight',xlab = 'nitrogen level', cex.axis=.7)
trees



?trees
str(trees)
x <- trees

summary(trees)

t.test(trees$Height, mu=70, conf.level = .99,alternative = 'greater')
wilcox.test(trees$Height, trees$Girth)

qqnorm(trees$Height)
qqline(trees$Height,lty=2)


shapiro.test(trees$Height)

t.test(trees$Height,trees$Girth)


var.test(trees$Girth,trees$Volume)


flower <- read.table('data/flower.xls',header = T)



buy <- c(45,71)
not_buy <- c(35,32)
d <- data.frame(buy,not_buy) %>% mutate(b= c('before','after'))

library(dplyr)


buy <- c(45,71)
total <- c((45+35),(71+32))

prop.test(buy,total)

a <- matrix(c(45,35,71,32),nrow = 2)

colnames(a) <- c('before','after')
rownames(a) <- c('buy','not_buy')

chisq.test(a)

cor(trees$Height , trees$Volume)

cor(trees)
cor.test(trees$Height,trees$Volume)


cor.test(trees$Height,trees$Volume, method = 'spearman')



?par

flower
par(mar = c(4.1,4.4,4.1,1.9), xaxs = 'i' , yaxs = 'i')
plot(flower$weight,flower$shootarea,
     type = 'n',
     xlab = 'weight',
     ylab = 'shoot area',
     ylim = c(0,200),
     xlim = c(0,30),
     las = 1 , cex.axis=.8, tcl=-.2)



par(mar = c(4.1, 4.4, 4.1, 1.9), xaxs="i", yaxs="i")
plot(flower$weight, flower$shootarea,
     type = "n",
     xlab = "weight (g)",
     ylab = expression(paste("shoot area (cm"^"2",")")),
     xlim = c(0, 30), ylim = c(0, 200), bty = "l",
     las = 1, cex.axis = 0.8, tcl = -0.2)
points(x = flower$weight[flower$nitrogen == "low"],
       y = flower$shootarea[flower$nitrogen == "low"],
       pch = 16, col = "deepskyblue")
points(x = flower$weight[flower$nitrogen == "medium"],
       y = flower$shootarea[flower$nitrogen == "medium"],
       pch = 16, col = "yellowgreen")
points(x = flower$weight[flower$nitrogen == "high"],
       y = flower$shootarea[flower$nitrogen == "high"],
       pch = 16, col = "deeppink3")
text(x = 28, y = 190, label = "A", cex = 2)
leg_cols <- c("deepskyblue", "yellowgreen", "deeppink3")
leg_sym <- c(16, 16, 16)
leg_lab <- c("low", "medium", "high")
legend(x = 1, y = 200, col = leg_cols, pch = leg_sym,
       legend = leg_lab, bty = "n",
       title = "Nitrogen level")












