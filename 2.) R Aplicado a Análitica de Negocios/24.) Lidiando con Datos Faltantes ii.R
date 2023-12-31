# En esta sesi�n abodaremos las funciones fill() y 

# la funci�n fill() llena los NA (valores faltantes) en las columnas seleccionadas
# (las opciones dplyr :: select () se pueden usar como en el siguiente 
# ejemplo con everyting()).

# De forma predeterminada, la funcion fill() utilizar� el dato de la celda anterior
# para completar el valor faltante.

# Bastante ingenuo, pero podr�a ser �til en muchos casos como, digamos, 
# datos de series temporales.

# Seguiremos utilizando la base datosNA que creamos en la sesi�n pasada a partir
# del dataframe marketing del paquete datarium

datosNA

# En esta funcion utilizaremos la funcion everything, para seleccionar todas
# las celdas con valores faltantes. Dicha funci�n forma parte del paquete dplyr
# que tambien es parte del ecosistema tidyverse. Antes de utilizar las funciones
# aseguremonos que las tenemos cargadas den la biblioteca

library(dplyr)
library(tidyr)

# Y ahora si llenemos las celdas vacias

datos_na_llenados <- datosNA %>% 
  fill(
    dplyr::everything()
  )

datos_na_llenados


# La tercera funcion que podemos utilizar para lidiar con los valores faltantes
# es replace_na (), que debe usarse cuando tenga el valor de reemplazo con el 
# que se deben completar las NA.

# A continuaci�n veamos un ejemplo de c�mo podemos reemplazar todos los NA con
# ceros (0)

datos_na_reemplazocero = datosNA %>% 
  mutate_all(replace_na,0)

datos_na_reemplazocero

# Espero que con estos ejemplos, haya arrojado luz sobre como pueden utilizar
# las tres funciones del paquete tidyr: replace_na, fill, y drop_na que vimos
# en la sesi�n anterior para lidiar con los valores faltantes. Con esto 
# finalizamos la sesi�n. Muchas gracias.