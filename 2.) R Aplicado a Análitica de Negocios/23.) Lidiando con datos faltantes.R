###
# En esta sesi�n, veremos 3 funciones de tidyr que son �tiles para manejar 
# los valores faltantes (NA) en el conjunto de datos. 


# Tidyr es un paquete que forma parte del ecosistema tidyverse
# y su objetivoes ayudar a crear un conjunto de datos ordenados. 
# Los datos ordenados son datos donde:
  
# Cada columna es una variable.
# Cada fila es una observaci�n.
# Cada celda es un valor �nico.

# tidyr tiene 3 funciones que son �tiles para procesar valores perdidos

drop_na ()
fill()
replace_na ()

# Para no extender tanto la sesi�n, la partiremos en dos. En esta primera parte
# a�adiremos valores faltantes a un dataframe y abordarmeos la funci�n drop_na
# Comencemos cargando la biblioteca tidyr y el dataframe marketing, contenido
# en el paquete datarium

install.packages("datarium")
library(datarium)
library(tidyr)

str(marketing)

# Ahora a�adiremos valores faltantes a la base marketing
datosNA <- marketing
datosNA$youtube[5] <- NA
datosNA$facebook[10] <- NA
datosNA$newspaper[10] <- NA
datosNA$sales[15] <- NA

# observemos la base
datosNA

# Contemos en n�mero de datos faltantes
paste("N�mero de datos faltanes:", sum(is.na(datosNA)))

# Remover las filas es una forma de lidiar con los datos faltantes, pero tiene
# el inconveniente de que perdemos observaciones. En la pr�xima sesi�n, 
# aprenderemos otras formas de lidiar con datos faltantes sin perder observaciones


#Ahora utilicemos drop_na() para remover las filas con datos faltantes

datos_noNA <- drop_na(datosNA)
sum(is.na(datos_noNA))
nrow(datos_noNA)

