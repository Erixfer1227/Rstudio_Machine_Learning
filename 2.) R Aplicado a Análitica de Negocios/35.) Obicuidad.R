###
# Las medidas de asimetr�a son indicadores que permiten establecer el grado 
# de simetr�a (o asimetr�a) que presenta una distribuci�n de probabilidad de 
# una variable aleatoria sin tener que hacer su representaci�n gr�fica. Como 
# eje de simetr�a consideramos una recta paralela al eje de ordenadas que pasa 
# por la media de la distribuci�n. Si una distribuci�n es sim�trica, existe el
# mismo n�mero de valores a la derecha que a la izquierda de la media, por tanto, 
# el mismo n�mero de desviaciones con signo positivo que con signo negativo. 
# Decimos que hay asimetr�a positiva (o a la derecha) si la "cola" a la derecha 
# de la media es m�s larga que la de la izquierda, es decir, si hay valores 
# m�s separados de la media a la derecha. Diremos que hay asimetr�a negativa 
# (o a la izquierda) si la "cola" a la izquierda de la media es m�s larga que 
# la de la derecha, es decir, si hay valores m�s separados de la media a la 
# izquierda.

# La asimetr�a resulta �til en muchos campos. Muchos modelos simplistas 
# asumen una distribuci�n normal, esto es, sim�trica en torno a la media.
# La distribuci�n normal tiene una asimetr�a cero. Cuando el tama�o de la
# muestra aumenta cualquier poblaci�n tiende a volverse sim�trica. Una 
# asimetr�a positiva implica que hay m�s valores distintos a la derecha de 
# la media.

# Las medidas de asimetr�a, sobre todo el coeficiente de oblicuidad, 
# junto con las medidas de apuntamiento o curtosis se utilizan para contrastar
# si se puede aceptar que una distribuci�n estad�stica sigue la distribuci�n 
# normal. Esto es necesario para realizar numerosos contrastes estad�sticos 
# en la teor�a de inferencia estad�stica.


# Ahora ilustremos colo calcular la oblicuidad y la kurtosis en R


# Para la oblicuidad, usaremos la funci�n skewness() de la libreria moments 
install.packages("moments")
library(moments) 


distancia <- c(23.45, 14.64, 17.69, 13.53, 15.65, 27.27, 25.24, 21.05, 21.65, 20.92, 22.61, 15.71, 22.04, 22.60, 24.25)



skewness(distancia)

kurtosis(distancia)

# Una oblicuidad negativa, significa que la campana est� cargada a la izquierda
# Una kurtosis menor 3 significa que la campana es platicurtica o achatada

# Grafiquemos

library(ggplot2)
qplot(distancia, geom = 'histogram', binwidth = 2) + xlab('Distancia en metros')


#Simulation
muestranormal <- rnorm(n = 25000, mean = 100, sd = 5)

#Skewness and Kurtosis
library(moments)
skewness(muestranormal)


kurtosis(muestranormal)



#Ahora grafiquemos el histograma
library(ggplot2)
qplot(muestranormal, geom = 'histogram', binwidth = 2) + xlab('Muestra Simulada Distribuci�n Normal')
