
# Histograms in R ---------------------------------------------------------


library(agricolae)
library(ggplot2)

datos <- readRDS("data/potatofb.rda")
datos <- as.data.frame(datos)

head(datos)
#Histograma normal

#Histograma para la variable NTP usando qplot
qplot(TTWP, geom = "histogram",data = datos, ylab = "COUNT", xlab = "TTWP",
      binwidth = 2) + scale_x_continuous(breaks = 7*0:11)

#Histograma para la variable NTP:Number of tubers planted
ggplot(datos, aes(NTP)) +
  geom_histogram()

#Histograma con los intervalos ajustados binwidth = 30
ggplot(datos, aes(NTP)) +
  geom_histogram(binwidth = 30)


#Histograma TTWP: total tuber weight plot
ggplot(datos, aes(TTWP)) +
  geom_histogram(binwidth = 0.7) +
  scale_x_continuous("TWPP")



# Kernel density plot of x
ggplot(DF, aes(x = x)) +
  geom_density(color = "blue", size = 1)







