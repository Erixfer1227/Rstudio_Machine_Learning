#### 
# Medidas de Tendencia Central

# Media
# Se calcula tomando la suma de los valores y dividiendo por el 
# n�mero de valores en una serie de datos.

# La funci�n mean () se usa para calcular esto en R.

# mean(x, trim = 0, na.rm = FALSE, ...)

# A continuaci�n se muestra la descripci�n de los par�metros utilizados:
  
  # x es el vector de entrada.
  
  # trim se utiliza para eliminar algunas observaciones de ambos extremos del vector ordenado.

# na.rm se utiliza para eliminar los datos sin un valor v�lido
# del vector de entrada. Veamos un ejemplo


# Crear vector 
x <- c(4.2,18,2,54,-21,8,-5,NA, -1, -5,-3,-2.3)

# Calculemos la media
mediax <-  mean(x,trim=0.1, na.rm = TRUE)
print(mediax)

#Mediana
# En el �mbito de la estad�stica, la mediana (del lat�n medianus 'del medio'1???) 
# representa el valor de la variable de posici�n central en un conjunto de 
# datos ordenados.
# Sintaxis

# median(x, na.rm = FALSE)
# Donde x es el vector de datos 
# y na.rm e utiliza para eliminar los datos sin un valor v�lido
# del vector de entrada. Veamos un ejemplo
# Utilicemos el vector x que ya creamos

x
# Encontremos la mediana
medianax <- median(x, na.rm = TRUE)
print(medianax)

# Moda

# La moda es el valor que tiene el mayor n�mero de ocurrencias en un 
# conjunto de datos. A diferencia de la media y la mediana, la moda 
# puede tener datos num�ricos y de caracteres.

# Por incre�ble que parezca, R no tiene una funci�n incorporada est�ndar
# para calcular la moda.Debemos crear una funci�n de usuario para calcular
# la moda de un conjunto de datos en R. 


# Creamos la funci�n
moda <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with numbers.
v <- c(3,3,3,3,3,3,1,2,4,5,6)

# Calculate the mode using the user function.
modax <- moda(v)
print(modax)