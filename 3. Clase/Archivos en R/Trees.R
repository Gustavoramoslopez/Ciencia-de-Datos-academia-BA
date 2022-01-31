#Analisis estadistico

## Explorando los datos
str(trees)
help(trees)
summary(trees) # Suministra estadistica descriptiva básica
class(trees) #Vemos que tipo clase es el objeto
head(trees, n= 10) #Primeras 10 filas

# Informacion Faltante (Missing)
rowSums(is.na(trees)) # Cantidad de Missing por Filas
colSums(is.na(trees)) # Cantidad de Missing por Columnas

# Estadistica Descriptiva mediante paquete "pastecs"
#install.packages("pastecs")
library(pastecs)

#Promedio
mean(trees$Girth) 
mean(trees$Height)
mean(trees$Volume) 

#Mediana
median(trees$Girth)
median(trees$Height)
median(trees$Volume) 

#Varianza
var(trees$Girth)
var(trees$Height)
var(trees$Volume) 

#Desvio Estandar
sd(trees$Girth)
sd(trees$Height)
sd(trees$Volume) 

#Maximos
max(trees$Girth)
max(trees$Height)
max(trees$Volume) 

#Minimo
min(trees$Girth)
min(trees$Height)
min(trees$Volume) 

#Rango
range(trees$Girth)
range(trees$Height)
range(trees$Volume) 

#Graficos 
hist(trees$Girth) 
hist(trees$Height) 
hist(trees$Volume) 
