library(readxl)
sales <- read_excel("Sample_Sales Records_xls.xls", 
                    col_types = c("text", "text", "numeric", 
                                  "numeric", "numeric"), n_max = 2)
View(sales)
plot(sales)
boxplot(sales$`Total Revenue`,sales$`Total Cost`)
boxplot(sales$`Total Profit`~sales$Region)
