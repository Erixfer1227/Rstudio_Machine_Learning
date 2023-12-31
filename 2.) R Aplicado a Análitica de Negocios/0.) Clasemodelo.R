##
# �Qu� es la inteligencia de negocios?

# La inteligencia de negocios o business intelligence (BI) es el conjunto 
# de procesos, aplicaciones y tecnolog�as que facilitan la obtenci�n r�pida 
# y sencilla de datos provenientes de los sistemas de gesti�n empresarial 
# para su an�lisis e interpretaci�n, de manera que puedan ser aprovechados
# para la toma de decisiones y se conviertan en conocimiento para los responsables del negocio.

# �C�mo se relaciona R con la inteligencia de negocios?
# Ahora quiero ilustrarles con un ejemplo muy aterrizado como R puede facilitar
# su tarea de limpieza, manipulacion, y visualizacion de datos para la toma
# de decisiones

library(nycflights13)

flights

# �Que tanta �til le resulta estos datos? �Puede sacar alg�n tipo de conclusi�n?

# �Y que tal si pudiera hacer operaciones entre las variables y
# sacar alg�n tipo de estad�stica descriptiva?
# Por ejemplo, calculemos la media de retraso de salida para todos los vuelos

summarise(flights, delay = mean(dep_delay, na.rm = TRUE))

# �Que tan �til le resulta saber que el tiempo promedio de retraso es de 12.6min?

# Ahora ya sabemos que en promedio los vuelos tienen un retraso de 12.6 minutos
# como un dato de an�lisis exploratorio esta bien, pero podr�amos indagar mas
# con algunos funciones de los paquetes de tidyverse podemos manipular datos
# con mucha eficiencia

# Imagine que queremos explorar la relaci�n entre la distancia y el retraso
# promedio para cada ubicaci�n. Agrupemos
# los datos por destino, y luego calculemos el n�mero de vuelos, distancia y
# tiempo de retraso
library(tidyverse)


por_destino <- group_by(flights, dest)
retrasos <- summarise(por_destino,
                      vuelos = n(),
                      distancia = mean(distance, na.rm = TRUE),
                      retraso = mean(arr_delay, na.rm = TRUE)
)
retrasos

# Para aquellos de uds. que tienen experiencia con excel, quiero que noten el
# poder y la eficiencia de R... con 5 l�neas de c�digo nos ahorramos al menos
# quince minutos, por ser muy benevolentes,
# de limpieza y manipulaci�n de datos con tablas din�micas

## Pero las ventajas de R, no llegan hasta aqu�... si queremos visualizar 
# los datos, no tenemos que exportarlos a Data Studio o TAbleau, podemos
# hacerlo con otras l�neas de c�digo... veamos

ggplot(data = retrasos, mapping = aes(x = distancia, y = retraso)) +
  geom_point(aes(size = vuelos), alpha = 1/3) +
  geom_smooth(se = FALSE)

# Parece que los retrasos aumentan con la distancia hasta ~ 750 millas
# y luego disminuya. Tal vez a medida que los vuelos se alargan, hay m�s
# capacidad para compensar retrasos en el aire... y ese es un insight
# much�simo m�s valioso que simplemente presentar el promedio de retraso
# en minutos...

# Quisiera cerrar la clase modelo, enfatizando 3 bondades de R
# 1. Es poderoso y eficiente... con pocas l�neas de c�digo podemos ahorrarnos
# varias horas de trabajo limpiando y manipulando datos
# 2. Paquetes elaborados por una comunidad de investigadores en el estado
# del arte del conocimiento. Esta es una ventaja por sobre los software comerciales
# Con R podes estar seguro que tendr�s los mejores recursos siempre
# 3. Por si esto fuera poco: Es gratis!

# Con esto doy por finalizada la sesi�n. Espero haber despertado su interes en R!
# Muchas gracias!
# 