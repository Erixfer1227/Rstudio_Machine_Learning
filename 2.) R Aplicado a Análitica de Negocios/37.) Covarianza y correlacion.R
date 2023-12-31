# En probabilidad y estad�stica, la covarianza es un valor que indica el grado 
# de variaci�n conjunta de dos variables aleatorias respecto a sus medias. 
# Es el dato b�sico para determinar si existe una dependencia entre ambas 
# variables y adem�s es el dato necesario para estimar otros par�metros
# b�sicos, como el coeficiente de correlaci�n lineal o la recta de regresi�n.

# Cuando los valores altos de una de las variables suelen mayoritariamente 
# corresponderse con los valores altos de la otra, y lo mismo se verifica 
# para los peque�os valores de una con los de la otra, se corrobora que 
# tienden a mostrar comportamiento similar lo que se refleja en un valor 
# positivo de la covarianza1???
# Por el contrario, cuando los valores altos de una variable suelen 
# corresponder mayoritariamente a los menores valores de la otra, expresando 
# un comportamiento opuesto, la covarianza es negativa.

####
# Apredamos a calcular la Covarianza entre dos variables
# Utilizaremos dos variables de airquality
# airquality
viento = airquality$Wind
temperatura = airquality$Temp
cov(viento,temperatura)

# El signo de la covarianza, expresa la tendencia en la relaci�n 
# lineal entre las variables. Un signo negativo, nos indicar�a que viento y
# temperatura tiene una relaci�n inversa: a menor viento, mayor temperatura
# y hace m�s calor, lo cual es intuitivo...

# La magnitud requiere un esfuerzo adicional de interpretaci�n: sabemos 
# interpretar el signo negativo, pero la magnitud de 15 no nos dice nada...
  # La versi�n normalizada de la covarianza, el coeficiente de correlaci�n 
# indica la magnitud de la especificidad de la relaci�n lineal.

#####
# En estad�stica, el coeficiente de correlaci�n de Pearson es una 
# medida de dependencia lineal entre dos variables aleatorias cuantitativas.
# A diferencia de la covarianza, la correlaci�n de Pearson es 
# independiente de la escala de medida de las variables.

# De manera menos formal, podemos definir el coeficiente de correlaci�n de 
# Pearson como un �ndice que puede utilizarse para medir el grado de relaci�n 
# de dos variables siempre y cuando ambas sean cuantitativas y continuas.

#####
# Ahora calculemos la correlaci�n entre las variables viento y temperatura que
# creamos previamente
cor(viento,temperatura)
# Si el coeficiente hubiese sido 1, dir�amos que es una correlaci�n perfecta
# Si hubiese sido cero, entonces no existir�a relaci�n alguna entre las variables
# Un coeficiente de -45% nos indica que las variables relacionadas inversamente
# pero que esta relaci�n no es tan fuerte.