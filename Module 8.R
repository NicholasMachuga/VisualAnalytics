mydata <- mtcars[, c(1,4,6,7)]
carsmatrix <- round(cor(mydata),2)
cars_melt <- melt(carsmatrix)
library(ggplot2)
ggplot(data = cars_melt, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile()
