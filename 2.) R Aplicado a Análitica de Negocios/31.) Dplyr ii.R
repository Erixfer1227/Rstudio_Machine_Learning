## 
#En esta segunda sesi�n de Dplyr, abordaremos las funciones select, mutate,
# summarise y group_by

##
# No es raro obtener conjuntos de datos con cientos o incluso miles de variables.
# En este caso, el primer desaf�o suele ser limitar las variables que realmente 
# le interesan. Select () le permite acercarse r�pidamente a un subconjunto
# �til mediante operaciones basadas en los nombres de las variables.

# select () no es muy �til con los datos de vuelos porque solo tenemos 19 
# variables, pero a�n puede hacerse una idea general:

# Selecciones las columnas a�o, mes y dia
select(flights, year, month, day)

# Seleccionemos todas las columnas entre a�o y dia, incluisve
select(flights, year:day)

# Selecconemos todas las columnas con excepcion a las contenidas entre a�o y dia
# (inclusive)
select(flights, -(year:day))

##
# Adem�s de seleccionar conjuntos de columnas existentes, a menudo es �til 
# agregar nuevas columnas que sean funciones de columnas existentes. 
# Ese es el trabajo de mutate ().

# mutate () siempre agrega nuevas columnas al final de su conjunto de datos, 
# por lo que comenzaremos creando un conjunto de datos m�s estrecho para que 
# podamos ver las nuevas variables. Recuerde que cuando est� en RStudio, 
# la forma m�s f�cil de ver todas las columnas es View().

vuelos <- select(flights, 
                      year:day, 
                      ends_with("delay"), 
                      distance, 
                      air_time
)
mutate(vuelos,
       ganancia = dep_delay - arr_delay,
       velocidad = distance / air_time * 60
)

# Si solo se quieren crear las variables nuevas dentro de la base se utiliza
# transmute

solo3variables = transmute(flights,
          gain = dep_delay - arr_delay,
          hours = air_time / 60,
          gain_per_hour = gain / hours
)

##
# La �ltima funci�n clave de Dplyr es resumir (). 
# Esta funci�n colapsa un marco de datos en una sola fila:
  
summarise(flights, delay = mean(dep_delay, na.rm = TRUE))

##
# summarise() no es muy �til a menos que lo emparejemos con group_by (). 
# Esto cambia la unidad de an�lisis del conjunto de datos completo a grupos 
# individuales. Luego, cuando use los verbos dplyr en un marco de datos agrupado,
# se aplicar�n autom�ticamente "por grupo". Por ejemplo, si aplicamos 
# exactamente el mismo c�digo a un marco de datos agrupado por fecha, 
# btenemos el retraso promedio por fecha:

por_dia <- group_by(flights, year, month, day)
summarise(por_dia, delay = mean(dep_delay, na.rm = TRUE))

#Juntos, group_by () y summarise () proporcionan una de las herramientas que 
#utilizar� con m�s frecuencia cuando trabaje con dplyr: res�menes agrupados.
## En la siguiente sesi�n, haremos un ejemplo pr�ctico, en el que aprender�
# como puede utilizar la transformaci�n y visualizaci�n en anal�tica de negocios
#Muchas gracias!