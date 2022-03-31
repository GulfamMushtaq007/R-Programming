library(ggpubr)
library(tidyverse)
library(rstatix)

set.seed(1234)
ToothGrowth %>% sample_n_by(supp,dose,size=1)

# Checking normality by density plot

ggdensity(ToothGrowth$len, fill = 'lightgray')

# QQplot(sample size > 50)

ggqqplot(ToothGrowth$len)


# Shapiro-Wilk's normality test
## Shapiro test for one variable:
shapiro_test(ToothGrowth$len)

##Shapiro test for grouped data:
View(ToothGrowth)
summary(ToothGrowth)
unique(ToothGrowth$dose)
ToothGrowth %>% group_by(dose) %>% shapiro_test(len)

##Shapiro test for multiple variables:
iris %>% shapiro_test(Sepal.Length, Petal.Width, Sepal.Width)



# Homogeneity of Variance Test in R

ToothGrowth$dose <- as.factor(ToothGrowth$dose)
set.seed(123)
sample_n(ToothGrowth,6)


## F-test: Compare two variances
var.test(len~supp, data=ToothGrowth)

# Compare multiple variances
## Bartlett's test
### Bartlett's test with one independent variable
View(PlantGrowth)
bartlett.test(weight~group, data = PlantGrowth)


### Bartlett's test with multiple independent variables:

bartlett.test(len ~ interaction(supp, dose), data=ToothGrowth)


## Levene's test
library(car)

###  Levene's test with one independent variable

leveneTest(weight~group, data=PlantGrowth)

### Levene's test with multiple independent variables

leveneTest(len ~ interaction(supp,dose), data=ToothGrowth)


## Fligner-Killeen's test(robust against departures from normality)
View(PlantGrowth)
fligner.test(weight~group, data = PlantGrowth)




