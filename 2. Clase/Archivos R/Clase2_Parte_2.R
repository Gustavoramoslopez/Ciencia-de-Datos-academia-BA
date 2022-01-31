#Empecemos..... Bienvenidxs!

#Funciones
potencia <- function(x,y){
  result<-x^y
  paste(x, "elevado a la potencia de ", y , "es", result)
}
potencia (4,2)

suma <- function (n1,n2){
  result <- n1+n2
  paste(n1, "sumado con ", n2 , "es" , result)
}
suma(10,3)

casa <- function (klm) {
  result <- klm
  paste("estoy a ", klm , "kilometros de casa")
}
casa (4)

#Importante! La funcioon paste(),
#une todos los vectores de caracteres 
#que se le suministran y construye una sola cadena de caracteres

cuadrado <- function(x){
  resultado <- x*x
  paste("El cuadrado de", x, "es:", resultado)
}
cuadrado(7)

cuadrado1 <- function(x){
  return (x*x)
}
cuadrado1(7)

#¿cual es la diferencia entre la funcion cuadrado y cuadrado1?
#en una guardo el resultado del calculo y lo muestro por pantalla

## For
for (i in 1:10){
  print(i)
}

for(a in 4:8){
  print(a)
}

fin2 <- 50
for (i in 1:fin2) {
  print(i)
}

fin <-20
for (i in 1:fin){
  print(i)
}



##While
k <-1
while(k<10){
  print(k)
  k<-k+1
}

x <- 2
while (x < 20){
  print(x)
  x <- x^2
}

##Repeat
i = 0 
repeat{
  print(i)
  i<-i+1
  if (i == 5) break
}

###Importando archivos y paquetes

#El comando que se utiliza por defecto para instalar archivos es
#install.packages("nombrePaquete")

#Por ejemplo: install.packages("ggplot2")

#Luego siempre debemos hacer uso del comando: library(nombrePaquete)
#para llamar a nuestra libreria.

#Para acceder a la descripcion de un paquete:
packageDescription("ggplot2")

#Para ver la ayuda del paquete
help(package = "ggplot2")

#Paquetes mas populares para carga de datos:
#SQLdf, RODBC, RPostgresSQL, RSQLite, readxl

#Para manipulacion de datos:
#plyr, reshape2, stringr

#Para visualizacion de datos e informacion:
#ggplot2, rgl, shiny

#Para modelizacion:
#caret, car, forecast

#Ahora si, empecemos a importar algunos archivos! Lo primero 
#que tenemos que tener en cuenta es nuestro directorio. 

getwd()

dir() #me muestra los archivos del directorio

setwd("C:/Users/guill/Desktop/R/Comision - Lunes-20210419T182904Z-001/Comision - Lunes/2. Clase")

getwd() ## verifico si me modifico la ruta

setwd("C:/Users/guill/Desktop/R/Comision - Lunes-20210419T182904Z-001/Comision - Lunes/2. clase/Datos")

getwd()

#Otros comandos importantes

#objects() me lista los objetivos que tengo en memoria
#rm("nombreObjeto") elimina un objeto

#Leemos nuestro primer archivo
DatosEPH <- read.csv2("DatosEPH2016.csv", 
                      header = T)
View(DatosEPH)

#Si quisiera eliminar:
#rm(DatosEPH)

#Leemos nuestro segundo archivo
empleados <- read.csv2("empleados.csv", sep = ",")

#Leemos nuestro tercer archivo
#install.packages("readxl")
#library(readxl)
clientes <- readxl::read_excel("Clientes.xlsx")

#Leemos nuestro cuarto archivo
customerProfitability <- readxl::read_excel("Customer Profitability Sample.xlsx")

#Leemos nuestro quinto archivo
precioAvisos <- read.csv(file = 'https://raw.githubusercontent.com/martintinch0/CienciaDeDatosParaCuriosos/master/data/precioBarrios.csv',
                         sep=';',
                         stringsAsFactors = FALSE)
View(precioAvisos)

#Con stringsAsFactors = FALSE estamos indicandole a R que no
#queremos que convierta nuestros datos en factores

#Por ultimo y no menos importante, como creamos un proyecto en R?
