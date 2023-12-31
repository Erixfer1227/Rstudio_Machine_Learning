## 

# En estad�stica, un histograma es una representaci�n gr�fica de una variable 
# en forma de barras, donde la superficie de cada barra es proporcional a la 
# frecuencia de los valores representados. Sirven para obtener una "primera vista" 
# general, o panorama, de la distribuci�n de la poblaci�n, o de la muestra, 
# respecto a una caracter�stica, cuantitativa y continua (como la longitud o el peso). 
# De esta manera ofrece una visi�n de grupo permitiendo observar una preferencia, 
# o tendencia, por parte de la muestra o poblaci�n por ubicarse hacia una 
# determinada regi�n de valores.

# Para elaborar un histograma en R 
# Lo primero que debemos hacer es cargar los datos que vamos a graficar
# Podr�a importar datos csv como hemos visto en tutoriales anteriores
# Para fines del tutorial, voy a utilizar la base trees que viene precargada
# en R. Reviso la estructura de la base

str(trees)

# Quiero graficar la altura de los �rboles, es decir la variable $Height

qplot(trees$Height, geom="histogram") 



# Otra forma de graficarlo es utilizando la funci�n ggplot
# Para ello, utilizemos siempre la columna Height del conjunto de datos trees

ggplot (data = trees, aes (Height)) + geom_histogram()

# Pero, �cu�l es la diferencia entre estas dos opciones?
# Se supone que la funci�n qplot () hace el mismo gr�fico que ggplot (), 
# pero con una sintaxis m�s simple. De hecho el nombre qplot, viene de
# quick plot o gr�fico r�pido. Mientras que ggplot () permite el m�ximo de funciones 
# y flexibilidad, qplot () es una funci�n m�s sencilla pero menos 
# personalizable de ggplot.

# Luego de recibir el mensaje, puedo agregar otros par�metros en q plot

qplot(trees$Height,
      geom="histogram",
      binwidth = 1,  
      main = "Histograma de Altura de Cerezos Negros", 
      xlab = "Altura en metros",  
      fill=I("white"), 
      col=I("blue"))
