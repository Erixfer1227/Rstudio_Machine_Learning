##
# En esta sesi�n, aprenderemos a elaborar regresiones lineales multiples y a 
# interpretar los resultados
# La regresi�n lineal m�ltiple es una extensi�n de la regresi�n lineal simple
# utilizada para predecir una variable de resultado (y) sobre la base de m�ltiples 
# variables predictoras distintas (x).

# Usaremos el conjunto de datos de marketing [paquete de datos], que contiene 
# el impacto de la cantidad de dinero gastado en tres medios publicitarios 
# (youtube, facebook y peri�dico) en las ventas.

# Primero instale el paquete datarium usando 
install.packages("datarium")

# luego carguemos e inspeccionemos los datos de marketing de la siguiente manera:
data("marketing", package = "datarium")
str(marketing)

# Ahora construyamos nuestro modelo
modelo <- lm(sales ~ youtube + facebook + newspaper, data = marketing)
summary(modelo)

# El primer paso para interpretar el an�lisis de regresi�n m�ltiple es 
# examinar el estad�stico F y el valor p asociado, en la parte inferior 
# del resumen del modelo.

# En nuestro ejemplo, se puede ver que el valor p del estad�stico F 
# es <2.2e-16, lo cual es altamente significativo. Esto significa que, 
# al menos, una de las variables predictoras est� significativamente 
# relacionada con la variable de resultado.

# Para ver qu� variables predictoras son significativas, puede examinar 
# la tabla de coeficientes, que muestra la estimaci�n de los coeficientes 
# beta de regresi�n y los valores p estad�sticos t asociados:

summary(model)$coefficient

# Para un predictor dado, el estad�stico t eval�a si existe o no una 
# asociaci�n significativa entre el predictor y la variable de resultado, 
# es decir, si el coeficiente beta del predictor es significativamente 
# diferente de cero.

# Se puede ver que los cambios en el presupuesto de publicidad de youtube 
#y facebook est�n significativamente asociados a cambios en las ventas, 
#mientras que los cambios en el presupuesto de los peri�dicos no est�n 
#significativamente asociados con las ventas.

#Para una variable predictora dada, el coeficiente (b) se puede interpretar 
#como el efecto promedio sobre y de un aumento de una unidad en el predictor, 
#manteniendo todos los dem�s predictores fijos.

#Por ejemplo, para una cantidad fija de presupuesto de publicidad en youtube
#y peri�dicos, gastar 1000 d�lares adicionales en publicidad en Facebook
#conduce a un aumento en las ventas de aproximadamente 
#0.1885 * 1000 = 189 unidades de venta, en promedio.

#El coeficiente de YouTube sugiere que por cada 1000 d�lares de aumento 
#en el presupuesto de publicidad de YouTube, manteniendo todos los 
#dem�s predictores constantes, podemos esperar un aumento de 
#0.045 * 1000 = 45 unidades de ventas, en promedio.

#Encontramos que el peri�dico no es significativo en el modelo de 
#regresi�n m�ltiple. Esto significa que, para una cantidad fija de 
#presupuesto de publicidad de peri�dicos y de youtube, los cambios en 
#el presupuesto de publicidad de los peri�dicos no afectar�n 
#significativamente las unidades de ventas.

#Como la variable del peri�dico no es significativa, es posible eliminarla del modelo:
#En la siguiente sesi�n, vamos a construir un nuevo modelo removiendo
#variable ventas, y aprenderemos a evaluar y comparar la calidad general de un modelo
#examinando el R-cuadrado (R2) y el Error est�ndar residual (RSE).
#Con esto finalizamos la sesi�n. Muchas gracias.



modelo2 <- lm(sales ~ youtube + facebook, data = marketing)

