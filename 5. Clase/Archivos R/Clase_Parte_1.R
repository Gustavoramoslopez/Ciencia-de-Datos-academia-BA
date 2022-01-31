#Clase 5 - Parte 1

#Empecemos cargando nuestro dataset
data("iris")
str(iris)
head(iris)
class(iris)

#Lo primero que vamos a hacer es un plot, es el grafico mas sencillo de todos
plot(iris$Sepal.Length)

#Ahora hagamos un plot pero de 2 variables de nuestro data set
plot(iris$Sepal.Length, iris$Sepal.Width)

#Probemos con 3 variables y utilicemos un color para distinguir cada una de ellas
plot(iris$Sepal.Length, iris$Sepal.Width, col = iris$Species)

#Graficos de cajas
plot(iris$Petal.Length ~ iris$Species)

#Histograma
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

#Probemos ahora con otro dataset
data(VADeaths)
str(VADeaths)
head(VADeaths)

#Barplot
barplot(VADeaths)
hist(VADeaths)

#Mas ejemplos
data("USArrests")
str(USArrests)
head(USArrests)
class(USArrests)

#Algunas visualizaciones que podrian resultar de interes
plot(USArrests)
hist(USArrests$Murder)
hist(USArrests$Assault)
hist(USArrests$UrbanPop)
hist(USArrests$Rape)

#Por Ultimo cargamos un archivo de forma local
setwd("C:/Users/guill/Desktop/R/Comision - Lunes-20210419T182904Z-001/Comision - Lunes/5. Clase/Datos")

informacion <- read.csv(file = "informacion.csv", sep = ";")

#Leemos la cabecera
head(informacion)

#Graficamos el histograma
hist(x = informacion$edad, 
     main = "Histograma de Edad", 
     xlab = "Edad", 
     ylab = "Frecuencia", 
     col= "blue")

#Graficamos el grafico de barra
tabla = table(informacion$education)
barplot(tabla, main = "Grafica de Educacion", 
        xlab="Nivel Educativo", 
        ylab="Frecuencia", 
        col = c("purple", "red"))

