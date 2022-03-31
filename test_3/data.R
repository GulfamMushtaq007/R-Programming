library(readxl)
data <- read_excel("data.xls", range = "A1:H27", 
                   col_types = c("text", "text", "text", 
                                 "skip", "numeric", "numeric", "numeric", 
                                 "numeric"))
View(data)


mean(data$`Manufacturing Price`)
var(data$`Gross Sales`)
aov(data$`Manufacturing Price` ~ data$`Sale Price`)
a1 <- aov(data$`Manufacturing Price` ~ data$`Sale Price`)
summary(a1)

TukeyHSD(a1)
