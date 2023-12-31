###
# Para este ejemplo, usaremos el conjunto de datos "cars" que viene preinstaladao
# en R y que por su simplicidad es muy  
# conveniente para ilustrar la regresi�n lineal de una manera simple y f�cil de 
# entender. Puede acceder a este conjunto de datos simplemente escribiendo 
# cars en su consola R. 
# Encontrar� que consta de 50 observaciones (filas) y 2 variables (columnas): 
# distancia y velocidad. Imprimamos las primeras seis observaciones aqu�.

str(cars)
cars

# Antes de comenzar a construir el modelo de regresi�n, es una buena pr�ctica
# analizar y comprender las variables. El an�lisis gr�fico y el estudio de
# correlaci�n a continuaci�n ayudar�n con esto.

# Para el an�lisis gr�fico, utilizaremos ggplot para elaborar un gr�fico de 
# dispersi�n, con una l�nea de tendencia suavizada

graficars = ggplot(cars, aes(x = speed, y = dist)) + 
  geom_point() +
    stat_smooth(method = "lm",
              col = "skyblue",
              se = FALSE,
              size = 1)
    
graficars

# Como podemos observar, la gr�fica sugiere una relaci�n lineal entre las
# variables velocidad y distrancia. Calculemos la correlaci�n para confirmar
# esta relaci�n.

# La correlaci�n es una medida estad�stica que sugiere el nivel de dependencia
# lineal entre dos variables, que ocurren en pares, al igual que lo que tenemos
# aqu� en speed y dist. La correlaci�n puede tomar valores entre -1 y +1. 
# Si observamos para cada instancia donde la velocidad aumenta, 
# la distancia tambi�n aumenta junto con ella, entonces hay una alta 
# correlaci�n positiva entre ellos y por lo tanto la correlaci�n entre ellos 
# ser� m�s cercana a 1. Lo contrario es cierto para una relaci�n inversa, 
# en la que caso, la correlaci�n entre las variables ser� cercana a -1.

# Un valor m�s cercano a 0 sugiere una relaci�n d�bil entre las variables. 
# Una correlaci�n baja (-0,2 <x <0,2) probablemente sugiere que gran parte
# de la variaci�n de la variable de respuesta (Y) no se explica por el
# predictor (X), en cuyo caso, probablemente deber�amos buscar mejores 
# variables explicativas.

## Ahora calculemos la correlaci�n
cor(cars$speed, cars$dist) 

# Una correlaci�n de 0.8 nos indica que hay una relaci�n fuerte entre las
# variables, no necesariamente de causalidad

## Ahora tiremos la regresi�n
## la sintaxis de la regresi�n lineal es muy sencilla
## lm(formula = y ~ x, data = nombredeldataset)

lm(formula = dist ~ speed, data = cars)

## 
# El intercepto es el valor en donde la gr�fica toca el eje y (donde x=0)
# No intenten interpretarlo, no siempre hace sentido
# El coeficiente de 3.932 si tiene interpretaci�n: Por cada unidad de velocidad
# el carro recorre casi 4 unidades de distancia.
