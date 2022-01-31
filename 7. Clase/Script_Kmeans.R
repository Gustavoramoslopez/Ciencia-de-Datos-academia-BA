#Cargamos la base de datos y escalamos los datos para q sean mas precisos 
arrestos<-scale(USArrests)
head(arrestos,n=3)

#cargamos las librerias q vamos a necesitar para realizar el agrupamiento
library(ggplot2)
library(factoextra)

#con esta funcion graficamos para determinar el nro de cluster
fviz_nbclust(arrestos, kmeans, method="wss")

#especificamos una semilla
set.seed(123)

#aplicamos el algortimo de k-medias
kmediasarrestos<-kmeans(arrestos,4, nstart = 25)

#agregamos a los datos los cluster
cluster <- cbind(USArrests, cluster = kmediasarrestos$cluster)
head(cluster)

#hacemos verificaciones con los datos
kmediasarrestos$centers
kmediasarrestos$size
kmediasarrestos$cluster

#graficamos los distintos cluster y aplicamos el algoritmos de PCA.
fviz_cluster(kmediasarrestos, data = arrestos,
               palette = c("#2E9FDF", "#00AFBB", "#E7B800", "#FC4E07"),
               ellipse.type = "euclid", # Elipses de concentracion
               star.plot = TRUE, # Coloca lineas desde los centrides a los items
               repel = TRUE, # Evita la sobre impresion de etiquetas
               ggtheme = theme_minimal())
