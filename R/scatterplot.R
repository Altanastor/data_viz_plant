library(ggplot2)
library(readxl)
library(ggrepel)


#fp <- file.choose()
#datos <- readxl::read_excel(fp,"Fieldbook")
#saveRDS(datos,file = "data/potatofb.rda")

datos <- readRDS("data/potatofb.rda")
datos <- as.data.frame(datos)

#Basic Scatter Diagram (basic points)
scater <- ggplot(datos, aes(x = TNTP, y = TTWP))
scater + geom_point()


#Scatter Diagram + aesthetic points
scater <- ggplot(datos, aes(x = NTP, y = TTWP))
scater + geom_point( aes(colour = factor(INSTN)) )


#Scatter Diagram + shape points
scater <- ggplot(datos, aes(x = NTP, y = TTWP))
scater + geom_point(aes(shape = factor(INSTN)) )


#Scatter Diagram + size points
# Set aesthetics to fixed value
scater <- ggplot(datos, aes(x = NPE, y = TTWP))
scater + geom_point(colour = "red", size = 3)


#Scatter Diagram + size points
# Set aesthetics to fixed value
scater <- ggplot(datos, aes(x = NPE, y = TTWP, label = rownames(datos)))
scater + geom_point(aes(colour = factor(INSTN))) + 
         geom_text(check_overlap = TRUE)


#Scatter Diagram + checking overlap of labels (of ggplot2)
# Set aesthetics to fixed value
scater <- ggplot(datos, aes(x = NPE, y = TTWP, label = rownames(datos)))
scater + geom_point(aes(colour = factor(INSTN))) + 
  geom_text(check_overlap = TRUE)



#Scatter Diagram + repeling overlapping (ggrepel) + size 
# Set aesthetics to fixed value
scater <- ggplot(datos, aes(x = ATW, y = TTWP))
scater +  geom_point(aes(colour = factor(INSTN), size = 1.5 )) +
          geom_text_repel(aes(label = as.character(INSTN)))  
       

# Varying alpha is useful for large datasets
scatter <- ggplot(datos, aes(x = ATW, y = TTWP, label = rownames(datos)))
scatter + geom_point(alpha = 1/10)







