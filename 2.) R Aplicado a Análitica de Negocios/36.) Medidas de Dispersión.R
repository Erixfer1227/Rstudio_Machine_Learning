##
# En estad�stica, las medidas de dispersi�n (tambi�n llamadas variabilidad, 
# dispersi�n o propagaci�n) es el grado en que una distribuci�n se estira o 
# exprime.??? Ejemplos comunes de medidas de dispersi�n estad�stica son la varianza, 
# la desviaci�n est�ndar y el coeficiente de variabilidad.

####
# En teor�a de probabilidad, la varianza o variancia (que suele representarse 
# como sigma^2 de una variable aleatoria es una medida de dispersi�n definida 
# como la esperanza del cuadrado de la desviaci�n de dicha variable respecto a 
# su media. Su unidad de medida corresponde al cuadrado de la unidad de medida
# de la variable: por ejemplo, si la variable mide una distancia en metros, la 
# varianza se expresa en metros al cuadrado. La varianza tiene como valor 
# m�nimo 0. 

# Aprendamos a calcular la varianza en R
# Creemos un vector
x = c(1,10,23,45,67,89,45,6,7,3,4,6,25)
var(x)



#######
# En estad�stica, la desviaci�n t�pica (tambi�n conocida como desviaci�n est�ndar 
# y representada de manera abreviada por la letra griega min�scula sigma ?? o 
# la letra latina s, as� como por las siglas SD (de standard deviation, en 
# algunos textos traducidos del ingl�s)) es una medida que se utiliza para 
# cuantificar la variaci�n o la dispersi�n de un conjunto de datos num�ricos.1???

# Una desviaci�n est�ndar baja indica que la mayor parte de los datos de 
# una muestra tienden a estar agrupados cerca de su media (tambi�n denominada 
# el valor esperado), mientras que una desviaci�n est�ndar alta indica que 
# os datos se extienden sobre un rango de valores m�s amplio.

x
sd(x)
sqrt(var(x))

####
# En estad�stica, cuando se desea hacer referencia a la relaci�n entre el 
# tama�o de la media y la variabilidad de la variable, se utiliza el 
# coeficiente de variaci�n (suele representarse por las siglas "C.V.").

# Su f�rmula expresa la desviaci�n est�ndar como porcentaje de la media 
# aritm�tica, mostrando una interpretaci�n relativa del grado de variabilidad, 
# independiente de la escala de la variable, a diferencia de la desviaci�n 
# t�pica o est�ndar. Por otro lado presenta problemas ya que a diferencia 
# de la desviaci�n t�pica este coeficiente es fuertemente sensible ante 
# cambios de origen en la variable. Por ello es importante que todos los 
# valores sean positivos y su media d�, por tanto, un valor positivo. 
# A mayor valor del coeficiente de variaci�n mayor heterogeneidad de los 
# valores de la variable; y a menor C.V., mayor homogeneidad en los valores 
# de la variable. Por ejemplo, si el C.V es menor o igual al 80%, significa 
# que la media aritm�tica es representativa del conjunto de datos, por ende 
# el conjunto de datos es "Homog�neo". Por el contrario, si el C.V supera 
# al 80%, el promedio no ser� representativo del conjunto de datos (por lo 
# que resultar� "Heterog�neo"). 

install.packages("FinCal")
library(FinCAl)
coefficient.variation(sd=sd(x), avg = mean(x))

# Los resultados muestran que la variable x presenta una dispersi�n del #
# 110% seg�n el valor obtenido en el coeficiente de variaci�n.Al superar
# el 80%, podemos concluir que el promedio no es represntativo del conjunto
# de datos.
