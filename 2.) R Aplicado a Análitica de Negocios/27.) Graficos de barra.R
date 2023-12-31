# Los gr�fico de barras o gr�fico de columnas, son una forma de representar 
# gr�ficamente un conjunto de datos o valores mediante barras rectangulares de 
# longitud proporcional a los valores representados. Los gr�ficos de barras pueden 
# ser usados para comparar cantidades de una variable en diferentes momentos o 
# diferentes variables para el mismo momento. Las barras pueden orientarse 
# horizontal y verticalmente.

# Para elaborar graficos de barra utilizaremos la funcion
# geom_bar () hace que la altura de la barra sea proporcional al n�mero de casos
# en cada grupo.
# geom_bar () usa stat_count () por defecto: 
# cuenta el n�mero de casos en cada posici�n x. 

# Podr�amos cargar un archivo csv como aprendimos en sesiones anteriores
# Pero por facilidad, utilizar� la base mpg o millas por gal�n que viene incluida en R 

# Veamos la estrucutra de la base
str(mpg)

# Utilicemos geom_bar para graficar el numero de casos en cada clase de vehiculo

ggplot(mpg, aes(class)) + geom_bar()
# Ahora cambiemos la orientaci�n del grafico hacia el eje y
ggplot(mpg) + geom_bar(aes(y = class))

# Ahora elaboremos un grafico de barras apiladas segmentado por el tipo de traccion

ggplot(mpg, aes(class)) + geom_bar(aes(fill = drv))


# Cambiemos a orientacion horizontal
ggplot(mpg, aes(y = class)) +   geom_bar(aes(fill = drv)) 
     