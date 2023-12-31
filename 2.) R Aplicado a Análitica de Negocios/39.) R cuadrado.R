# Evaluaci�n de la precisi�n del modelo

# la calidad general del modelo se puede evaluar examinando el R cuadrado 
# (R2)

# R-cuadrado:
  
# En la regresi�n lineal m�ltiple, el R2 representa el coeficiente de 
# correlaci�n entre los valores observados de la variable de resultado (ye)
# y los valores ajustados (es decir, predichos) de ye. 
# Por esta raz�n, el valor de R siempre ser� positivo y variar� de cero a uno.

# R2 representa la proporci�n de varianza, en la variable de resultado ye, 
# que puede predecirse conociendo el valor de las variables x. 
# Un valor de R2 cercano a 1 indica que el modelo explica una gran parte de 
#la varianza en la variable de resultado.

#Un problema con el R2 es que siempre aumentar� cuando se agreguen m�s 
#variables al modelo, incluso si esas variables solo est�n d�bilmente 
#asociadas con la respuesta (James et al. 2014). Una soluci�n es ajustar 
#el R2 teniendo en cuenta el n�mero de variables predictoras.

#El ajuste en el valor "Cuadrado R ajustado" en el resultado de resumen 
#es una correcci�n para el n�mero de x variables incluidas en el modelo de 
#predicci�n.

#Para ilustrar el uso del R cuadrado ajustado, seguiremos utilizando la 
#el conjunto de datos marketing de la base datarium

#Volvamos a poner en nuestra librer�a a datarium y carguemos la base marketing
library(datarium)
data("marketing", package = "datarium")
str(marketing)

#En la sesion anterior, corrimos un modelo con tres variables independientes
#que era la inversi�n en publicidad en youtube, facebook y peri�dico 
#que explicaban las ventas de un negocio, corramos este modelo

modelo <- lm(sales ~ youtube + facebook + newspaper, data = marketing)
summary(modelo)

#como podemos observar, el modelo tiene un R2 ajustado de 0.8956, lo cu�l es
#bastante alto, sin embargo la variable peri�dico no es significativa.
#Probemos elaborando un nuevo modelo que excluya dicha variable

modelo1 <- lm(sales ~ youtube + facebook, data = marketing)
summary(modelo1)

#En este nuevo modelo, obtuvimos un r2 ajustado de 0.8962 lo cual es un poco
#mayor a 0.8956 del modelo anterior, por lo que podr�amos afirmar que este 
#segundo modelo con s�lo dos variables independientes, tiene un mayor poder
#explicativo que el primero. En este modelo, ambas variables son estad�sticamente
#significativas y tenemos un R2 bastante alto. S�lo por curiosidad, elaboremos
#modelos con regresi�n lineal simple para cada una de las dos variables youtube
#y facebook

modelo2 <- lm(sales ~ youtube, data = marketing)
summary(modelo2)

#En este tercer modelo, con s�lo youtube como variable independiente obtuvimos
#un R2 ajustado de 0.6099, lo cu�l es menor al modelo de dos variables. 
#Ahora los invito a elaborar por su cuenta la regresi�n simple con facebook
#como variable independiente. Desde ya les aviso que obtendr�n un R2 ajustado
#de 0.3287 incluso menor que el de la regresi�n de youtube.

#Que podr�amos concluir de este ejercicio: Que para la informaci�n disponible,
#el mejor modelo para predecir las ventas es el modelo de dos variables 
#independientes: facebook y youtube, ya que es el que tiene un mayor R2 ajustado.

#Una pregunta v�lida es: deber�amos incluir una variable que no es
#estad�sticamente significativa en un modelo. La respuesta, como todo en la vida
#es depende. Si ud. est� probando hip�tesis dentro de una investigaci�n cient�fica
#con el fin de generar una publicaci�n, entonces su objetivo es crear el modelo
#m�s parsimonioso posible, es decir, el modelo m�s sencillo posible...
#en ese caso, deber�a desechar las variables no estad�sticamente significativas.
# Pero si su finalidad es crear un modelo predictivo, entonces su objetivo es
# obtener el mayor R2 ajustado, y en esos casos, es posible que una variable no
# estad�sticamente significativa podr�a por su interacci�n con otras variables,
# aumentar el R2 ajustado. En dicha salvedad, deber�a incluirla.

# con esto finalizamos la sesi�n. Muchas gracias!



