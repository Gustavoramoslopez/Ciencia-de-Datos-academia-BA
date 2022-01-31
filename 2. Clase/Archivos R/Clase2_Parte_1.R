#Empecemos..... Bienvenidxs!
#¿Como hacemos un comentario en R?, vamos a utilizar el # (numeral)

## Para obtener informacion sobre una funcion
help("mean")
?mean
#un comentario
## Para asignar valores a una variable
x <- 5
x = 5 #esta manera de asignar es muy poco utilizada

#Operadores
a <- 2+4
print(a)
bb <- 10-5
print(bb)
b <- 10-3
print(b)

c <- 5*5
print(c)

d <- 4/2
print(d)

e <- 13%%3 #Modulo o resto
print(e)

d<e
b>=a
c!=d #distinto

#Un poco mas....
a <- 1
f <-a+1
print(f)

f1 <- f+3

#¿Cuanto me daria f1?
print(f1)

## Para crear un vector 
v <- c(1, 2, 3, 4, 5) #numérico
b <- c(TRUE, FALSE, TRUE, FALSE, TRUE)#logico
c <- c("a", "b", "c", "d", "e") #de caracteres
vector <- c("esto es un vector creado por mi")
z <- c(1,2, "a", "b") #me lo convierte en char
print(vector)


#Otra opcion es a traves del uso de la funcion "assign()"
assign("v1", c(1, 2, 3, 4, 5)) #numérico
print(v1)

assign("b1", c(TRUE, FALSE, TRUE, FALSE, TRUE)) #logico
print(b1)

assign("c1", c("a", "b", "c", "d", "e")) #caracteres
print(c1)

cadena <- c("Hola", "Mundo", "Estoy", "Aprendiendo", "R")
print(cadena)

assign("gus", c("Name Gustavo vector"))
print(gus)

#Si deseamos agregar un elemento adicional a un vector ya existente...
x <- c(2,3,4,5)
x <- c(x,6,7,8,9)
print(x)

x <- c(x,11,12,13)
print(x)

#Combinando dos vectores
mi_vector_1 <- c(1,5,7)
print(mi_vector_1)

mi_vector_2 <- c(6,7,8)
print(mi_vector_2)

mi_vector_3 <- c(mi_vector_1, mi_vector_2,10,15)
print(mi_vector_3)



#Si quisiera sumar....
mi_vector <- c(1,5,7)
print(mi_vector+2) #3,7,9



#Si quisiera multiplicar.....
mi_vector <- c(1,5,7)
print(mi_vector*3) #3,15,21

#IMPORTANTE!! 
#R es key sensitive es decir es sensible a mayusculas y minusculas
#para R no es lo mismo el objeto "nombre" que "Nombre" o "NOMBRE"

## Funciones por defecto en R, que puedo aplicarlas mis vectores
print(v)
asd <- c(4,1,5,21,5)
min(v) ## Retorna el valor mimino del vector
max(v) ## Retorna el valor maximo del vector
length(v) ## Retorna el tamano del vector
sum(v) ## Retorna la suma de los elementos del vector
prod(v) ## Retorna el producto de los elementos del vector
sort(v) ## Retorna un nuevo vector ordenado
sort(asd)
mode(v) ## Retorna el modo del vector (tipo de dato)

## Secuencias
seq(from=1, to=5, by=.2) ## Retorna un vector con la secuencia de valores segunn la definicion

seq (from=10, to=15, by=.5)

1:5 ## Retorna una secuencia de valores entre ambos numeros de acuerdo a su progreciÃƒÂ³n natural

10:20

rep(v, times=3) ## Repite el vector dado tantas veces como se defina
rep(4, times=5)

vecMulti <- c(2*2*2)
rep(vecMulti, times=2)

#Recuerden que v vale (1,2,3,4,5)

## Vectores indice
print(v)

v[1] ## Retorna el elemento 1 del vector
v[c(1,3)] ## Retorna los elementos 1 y 3 del vector
v[v > 2] ## Retorna los elementos mayores a 2 del vector

v[v > 4]

U<-c(10,1,56,4,100)
U[5]
U[c(1,3,5)]
U[U > 8]

#IMPORTANTE!!! Los Indices en R empiezan en 1, no en 0

## Nombre de los indices
v <- c(20,22,28,24)

z <- c("Juan", "Tom", "Erik")
names(z) <- c("Bici", "Bondi", "Moto")
print(z)

names(v) <- c("Juan", "Pedro", "Ernesto", "Julio") ## Define el nombre a las columnas
print(v)



v["Juan"] ## Retorna el valor para la columna "Juan"
z["Moto"]


## Valores no existentes (NA)
n <- c(1,2,NA,4,5,NA) ## Retorna un vector de 6 elementos con 2 valores desconocidos
print(n)
numeros 

is.na(n) ## Retorna verdadero si el valor es NA
is.numeric(n)

n[is.na(n)] ## Retorna solo los valores NA

n[!is.na(n)] ## Retorna los valores no NA

n[is.na(n)] <- 0 ## Asigna 0 a los valores NA

print(n)

## Factores
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld", "vic", "nsw", "vic", "qld", "qld", "sa", "tas",
           "sa",  "nt",  "wa",  "vic", "qld", "nsw", "nsw", "wa",
           "sa",  "act", "nsw", "vic", "vic", "act")
stateFactor <- as.factor(state) ## Define los factores (valores nominales) del vector estado
levels(stateFactor) ## Retorna los niveles (valores nominales) del factor

incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
             59, 46, 58, 43)
tapply(incomes, stateFactor, mean) ## Aplica una funcion dada a cada grupo tapply(vector, factor, funcionn)

## Matrices

m <- matrix(c(1,2,3,4), nrow=4, ncol=2) ## Crea una matriz a partir del vector dad con las dimensiones definidas.
m

m <- matrix(c(1,2,3,4), nrow=2, ncol=2, dimnames = list(c("j", "k"), c("l","m")))
m
print(m)

m[1,2] ## Retorna el elemento de la posicion fila 1 columna 2
m[1,] ## Retorna todos los elementos de la fila 1
m[,1] ## Retorna todos los elementos de la columna 1

m[1,1] <- 9 ## Asigna 9 a elemento de la fila 1 columna 1
m

m[1,] <- 0 ## Assigna 0 a todos los elementos de la fila 1
m

cc<- cbind(c(1,2,3,4), c(9,8,7,6)) ## Crea una matriz combinando los vectores en columnas (cada vector es una columna)
cc

cr<- rbind(c(1,2,3,4), c(9,8,7,6)) ## Crea una matriz combinando los vectores en filas (cada vector es una fila)
cr

print(m)
rownames(m) <- list("Juan", "Pedro") ## Asigna nombre a las filas
m

colnames(m) <- list("Edad", "Hijos") ## Asigna nombre a las columnas
m

m["Juan", "Edad"] ## Retorna el valor de elemento definido por la fila "Juan" y la columna "Edad"
m["Pedro", "Edad"]

## Attributos sobre matices
nrow(m) ## Cantidad de filas
ncol(m) ## Cantidad de columnas
dim(m) ## Dimension de la matriz
length(m) ## Largo de la matriz (cantidad de elementos)
mode(m) ## Tipo de dato de la matriz

## Mas Operaciones sobre matrices
a <- matrix(c(1,2,3,4), c(2,2))
a

b <- matrix(c(9,8,7,6), c(2,2))
b

t(a) ## Retorna la traspuesta de la matriz

a * b ## Retorna una matriz con el producto elemento a elemento

a %*% b ## Retorna el producto matricial

print(a)
diag(a) ## Retorna una matriz con la diagonal de la matriz original

##Por ultimo listas
l <- list(1,2,"a","b") ## Retorna una lista con los elementos dados
View(l)

l <- list(names=c("Juan", "Pedro"), age=c(10,11)) ## Retorna una lista con los elmentos dados, asigando nombre a cada uno de los componentes
View(l)

#Distintas formas de hacer lo mismo
l[[1]] ## Retorna el primer componente de la lista
l[[1]][1] ## Retorna el primer componente de la lista y sobre este el primer elemento (se conoce que componente es un vector)
l[["names"]] ## Retorna el componente "names" 
l[["names"]][1] ## Retorna el componente "names" y sobre este el primer elemento (se conoce que el componente es un vector)
l$names ## Retorna el componente "names"
l$names[1] ## Retorna el componente "names" y sobre este el primer elemento (se conoce que el componente es un vector)

#Lo convertimos en DataFrame para visualizarlo mejor
dataFrame <- data.frame(l)
View(dataFrame)
