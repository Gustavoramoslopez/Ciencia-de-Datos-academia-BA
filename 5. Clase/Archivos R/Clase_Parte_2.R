#Clase 5 - Parte 2

#Importar el archivo
df=read.csv('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv')

#Empecemos obteniendo un resumen de las variables del dataset
summary(df)

#Luego, carguemos las librerias que vamos a utilizar
library(ggplot2)
library(plotly)

#Generamos un scatterplot
ggplot(df,aes(x=total_bill,y=tip))+ geom_point()

#Ahora vamos a cambiar los colores de los puntos
ggplot(df,aes(x=total_bill,y=tip))+ geom_point(color='red')

#Cambiemos los colores en base a otra variable categorica como el sexo (sex)
ggplot(df,aes(x=total_bill,y=tip,color=sex))+ geom_point(color='blue')
ggplot(df,aes(x=total_bill,y=tip,color=sex))+ geom_point()

#Ahora, modifiquemos la forma del punto en base a la variable smoker
ggplot(df,aes(x=total_bill,y=tip,color=sex,shape=smoker))+ geom_point()

#Cambiemos el tamano del punto
ggplot(df,aes(x=total_bill,y=tip,color=sex,shape=smoker))+ geom_point(size=4)

#Cambiemos la transparencia del punto
ggplot(df,aes(x=total_bill,y=tip,color=sex,shape=smoker))+ geom_point(size=4,alpha=0.7)

#Ahora agregamos una capa mas de geometria
ggplot(df,aes(x=total_bill,y=tip,color=sex))+
  geom_point(size=4,alpha=0.7)+
  geom_line()

#Agreguemos los titulos a los ejes, subtitulos y epigrafe.
ggplot(df,aes(x=total_bill,y=tip,color=sex))+
  geom_point(size=4,alpha=0.7)+
  geom_line()+
  labs(x='ticket total',y='propinas',
       title='Grafico de facturacion y propinas',
       subtitle = 'BA Emprende - Intro a Data Science con R',
       caption = 'Los datos fueron obtenidos en reshape2',
       legends='sexo')

#Generamos facet basados en la variable day
ggplot(df,aes(x=total_bill,y=tip,color=sex))+
  geom_point(alpha=0.7)+
  labs(x='ticket total',y='propinas',
       title='Grafico de facturacion y propinas',
       subtitle = 'BA Emprende - Intro a Data Science con R',
       caption = 'Los datos fueron obtenidos en reshape2',
       legends='sexo')+
  theme_bw()+
  facet_wrap(day~.)

#Ahora vamos a generar facet basados en la variable day y time
ggplot(df,aes(x=total_bill,y=tip,color=sex))+
  geom_point(alpha=0.7)+
  labs(x='ticket total',y='propinas',
       title='Grafico de facturacion y propinas',
       subtitle = 'BA Emprende - Intro a Data Science con R',
       caption = 'Los datos fueron obtenidos en reshape2',
       legends='sexo')+
  theme_bw()+
  facet_wrap(day~time)

#Barplot
#El barplot es una grafica de barras,donde en el eje x 
#se coloca una variable categorica y las frecuencias en el eje y. 
#Para cada factor se genera una barra con alturas 
#proporcionales a la frecuencias

#Generemos entonces un barplot donde en el eje x se encuentre la variable day
ggplot(df,aes(x=day))+ geom_bar()

#Asignemos un color en base a la variable day
ggplot(df,aes(x=day,fill=day))+
  geom_bar(color='black')

#Eliminemos las leyendas
ggplot(df,aes(x=day,fill=day))+
  geom_bar(color='black',show.legend = F)

#Cambiemos el color en base a la variable sex
ggplot(df,aes(x=day,fill=sex))+
  geom_bar(color='black',show.legend = T)

#Cambiemos la forma en la que se visualizan las barras agrupadas
ggplot(df,aes(x=day,fill=sex))+
  geom_bar(color='black',show.legend = T,position = 'dodge')

#Giremos los ejes
ggplot(df,aes(x=day,fill=sex))+
  geom_bar(color='black',show.legend = T,position = 'dodge')+
  coord_flip()

# Boxplot
#El boxplot es un grafico para visualizar la distribucion de una 
#variable numurica  usando cuartiles.

#Generemos nuestro boxplot donde en el x este la variable day y 
#en el eje y total_bill
ggplot(df,aes(x=day,y=total_bill))+
  geom_boxplot(color='black',show.legend = T)

#Cambiemos los colores de cada una de las cajas
ggplot(df,aes(x=day,y=total_bill,fill=day))+
  geom_boxplot(color='black',show.legend = F)

#Generemos un grafico de violin
ggplot(df,aes(x=day,y=total_bill,fill=day))+
  geom_violin(color='black',show.legend = F)

#Plotly proporciona herramientas de graficos, analisis y estadisticas, así como paquetes de código abierto con implementación de gráficos interactivos para Python , R , MATLAB , Perl , Julia, Arduino y REST .
#Para conocer mas de la implementacion de Ploty en R: 
#https://plot.ly/r/
  
#Generar un plotly basado en un boxplot
ggplotly(
  ggplot(df,aes(x=day,y=total_bill,fill=day))+
    geom_boxplot(color='black',show.legend = F))

#Generar un plotly basado en un scatterplot
ggplotly(
  ggplot(df,aes(x=total_bill,y=tip,color=day,label=sex))+
    geom_point(show.legend = F))
