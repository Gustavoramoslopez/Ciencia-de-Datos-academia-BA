setwd("C:/Users/guill/Desktop/R/Comision - Lunes-20210419T182904Z-001/Comision - Lunes/6. Clase/Archivos R/Archivos R")

#Ejemplo de arboles
h <- read.csv("Explorandolosarboles1.csv", sep = ";")
head(h)
str(h)

#Como vemos A,B,C estan como character, tenemos que cambiarlo,

#primero reemplazamos la , por el .
h[,2] <-gsub(',','.',h[,2])
h[,3] <-gsub(',','.',h[,3])
h[,4] <-gsub(',','.',h[,4])
head(h)
str(h)

#Ahora si lo ponemos numero
h$A <- as.numeric(h$A)
h$B <- as.numeric(h$B)
h$C <- as.numeric(h$C)
head(h)
str(h)

#Separamos los datos para hacer entrenamiento y para hacer prueba
#primero de todo generamos un vector x con nro aleatorios
x <- runif(nrow(h))
x

#Vemos cuantas filas tenemos en h
nrow(h)

#Separamos los datos
train <- h[which(x<.7),]
train

test <- h[which(x>=.7),]
test

#Verificamos que todo este bien
nrow(train)
nrow(test)

#Empezamos a graficar el arbol
library(rpart)

#Definimos la formula de nuestro arbol, donde A,B y C son mis predictores
f <- "R ~ A + B + C"
f

#Guardamos nuestro arbol en la variable t
t <- rpart(formula=f, data=train)

#Vemos nuestro arbol
plot(t)
text(t)

#Hacemos un poquito mas lindo nuestro arbol
library(rpart.plot)
prp(t)