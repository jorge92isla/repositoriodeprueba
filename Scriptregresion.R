# I´m going to generate an R script in my test repository.

#I intend to carry out a simple linear regression to analyze if the height have a logical relationship with the weight.

library(readxl)
datosfamilias <- read_excel("datosfamilias.xlsx")
View(datosfamilias)

install.packages(lme4)
library(lme4)

regresion<-lm(peso ~ altura, data = datosfamilias)

summary(regresion)

plotregresion<-plot(peso ~ altura, data = datosfamilias)

abline(regresion, col = "green")

