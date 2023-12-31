# En las siguiente sesi�n, aprenderemos algunas funciones que nos facilitaran
# la limpieza de datos en R. 
# Esta puede parecer una tarea irrelevante,
# pero limpiar datos es la habilidad m�s fruct�fera que puede aprender como 
# cient�fico de datos. Le ahorrar� horas de tiempo y har� que sus datos 
# sean mucho m�s f�ciles de visualizar, manipular y modelar con R.

# El paquete tidyverse de Hadley Wickham  
# Contiene cuatro funciones que alteran el dise�o de los conjuntos de datos 
# tabulares, al tiempo que preservan los valores y las relaciones contenidos 
# en los conjuntos de datos. Estas funciones son spread(), gather(), separate()
# y unite()

#NOO Las primeras dos funciones son spread() y gather() 
# Cada uno se basa en la idea de un par clave-valor.

# Un par clave-valor es una forma sencilla de registrar informaci�n. 
# Un par contiene dos partes: una clave que explica lo que describe la 
# informaci�n y un valor que contiene la informaci�n real. 



# Cada celda de una tabla de datos contiene la mitad de un par clave-valor, 
# al igual que el nombre de cada columna. En los datos ordenados, 
# cada celda contendr� un valor y el nombre de cada columna contendr� una 
# clave, pero no es necesario que este sea el caso de los datos desordenados.

###
# Primero que nada, Instalemos y pongamos en la biblioteca el paque tidyverse
library(tidyverse)

# El conjunto de datos que usar� en esta publicaci�n es el tabaquismo, 
# el alcohol y el (O) c�ncer de es�fago, que se incluye de forma 
# predeterminada en la R. Echemos un vistazo a las variables.

datos = esoph

summary(datos)
datos

# Este conjunto de datos tiene 88 filas y 5 variables compuestas por grupo 
# de edad, consumo de alcohol, tabaquismo y n�mero de casos (c�ncer de es�fago)
# y controles para cada fila.

### Ilustremos la funci�n SPREAD()
# Como podemos observar, la variable agegp tiene 6 grupos #
# (es decir, 25-34, 35-44) que tienen diferentes combinaciones de consumo
# de alcohol y consumo de tabaco. Utilicemos la funci�n spread para
# pasar este conjunto de 
# datos de largo a ancho y crear una columna para cada grupo de edad y 
# mostrar los casos respectivos. Veamos c�mo se ver� el conjunto de datos.

spreadpor_edad = datos %>% 
  spread(agegp, ncases) 

spreadpor_edad

### ILUSTRAC�ON DE LA FUNCI�N GATHER()
# Como podemos observar el conjunto de datos esa mas informativo cuando
# las variables estan separadas por por cada grupo de edad. 
# Sin embargo, si quisieramos regresar a la estructura original, 
# podriamos hacerlo con la funci�n gather().


spreadpor_edad %>% 
  gather(agegp, ncases, -alcgp, -tobgp, -ncontrols) %>% 
  filter(!is.na(ncases)) 

# Le pedimos que recopile las filas por grupo de edad y n�mero de casos
# y con filter, le pedimos que ignore aquellas observaciones con valores
# faltantes

###
#Ahora ilustremos la funci�n separate
# Esta funci�n se utiliza para crear varias columnas a partir de una sola. 
#A continuaci�n, vamos separar la variable agegp en otras dos variables
#a�o m�nimo y m�ximo.

datos

datos %>% 
  separate(agegp, into = c("min", "max"), sep = "-")

## Ilustraci�n de la funci�n unite o unir

# Lo opuesto a separate es unite. Usando el ejemplo anterior, unir� la 
# variable min y max en agegp como estaba en el conjunto de datos original.

datos2 = datos %>% 
  separate(agegp, into = c("min", "max"), sep = "-")
datos2 %>% 
  unite(agegp, min, max, sep = "-")
