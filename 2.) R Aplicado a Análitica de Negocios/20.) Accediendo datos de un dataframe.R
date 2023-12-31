## �C�mo acceder a los componentes de un marco de datos?

# Se puede acceder a los componentes del marco de datos como una lista 
# o como una matriz.

# Accediendo como una lista
# Podemos usar [, [[, o el operador $ para acceder a las columnas del marco de datos.
x <- data.frame("C�digo" = c(2501,2502), "Edad" = c(21,15), "Nombre" = c("Juan","Guadalupe"))

x["Nombre"]
x[[3]]
x$Nombre

# Acceder con [[ o $ es similar. Sin embargo, difiere para [ en que, 
# indexar con [ nos devolver� un marco de datos pero los otros dos nos 
# devolver� un vector.


## Accediendo como una matriz
# Se puede acceder a los marcos de datos como una matriz proporcionando 
# un �ndice para filas y columnas.

# Para ilustrar esto, usamos conjuntos de datos que ya est�n disponibles en R. 
# Los conjuntos de datos que est�n disponibles se pueden listar con la biblioteca 
# de comandos (ayuda = "conjuntos de datos").

# Usaremos el conjunto de datos de trees (est� "preinstalado" en R)
# que contiene Circunferencia, Altura y Volumen para Cerezos Negros.

# Un marco de datos se puede examinar usando funciones como str() y head()

str(trees)


# Podemos ver que trees es un marco de datos con 31 filas y 3 columnas. 
# Tambi�n mostramos las primeras 3 filas del marco de datos.

# Ahora procedemos a acceder al marco de datos como una matriz.

trees[2:3,]    # seleccionamos la segunda y tercera fila

trees[trees$Height > 82,]    # seleccionamos aquellas filas que tiene una altura 
# mayor a 82

trees[10:12,2] # seleccionamos los datos contenidos en la columna 2 de las filas
# 10, 11 y 12

# Podemos ver en el �ltimo caso que R nos devuelve un vector 
# ya que extrajimos datos de una sola columna.

# Podriamos evitar esto, incluyedo el argumento drop = FALSE de la siguiente manera

trees[10:12,2, drop = FALSE]
