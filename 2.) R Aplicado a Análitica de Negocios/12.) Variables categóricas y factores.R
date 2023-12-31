## 
# Factores y variables categ�ricas

#Los factores son variables en R que toman un n�mero limitado de valores diferentes; 
# estas variables se denominan a menudo variables categ�ricas.

# En un conjunto de datos, podemos distinguir dos tipos de variables: 
# categ�ricas y continuas.

# Una variable continua puede tomar cualquier valor, desde entero hasta decimal. 
# Por ejemplo, podemos tener los ingresos, el precio de una acci�n, etc.

# En una variable categ�rica, el valor es limitado y generalmente se basa en un grupo 
# finito particular. Por ejemplo, una variable categ�rica puede ser pa�ses, a�o, g�nero, 
# ocupaci�n.

# Variables categ�ricas
# R almacena variables categ�ricas en un factor. 
# Revisemos el c�digo siguiente para convertir una variable de car�cter en una 
# variable de factor. Los caracteres no son compatibles con el algoritmo de 
# aprendizaje autom�tico y la �nica forma es convertir una cadena de caracteres 
# en un n�mero entero.

# Sint�xis
# factor(x = character(), levels, labels = levels, order = is.ordered(x))
# x: un vector de datos. Debe ser una cadena o un n�mero entero, no un decimal.

# levels: un vector de posibles valores tomados por x. Este argumento es opcional. 
# El valor predeterminado es la lista �nica de elementos del vector x.

# labels: agregue una etiqueta a los datos x. 
# Por ejemplo, 1 puede tomar la etiqueta "hombre" mientras que 0, la etiqueta "mujer".

# order: Determine si los niveles deben ordenarse.

# Hagamos un ejemplo

# Crear un vector con d�as de la semana
dias_semana <- c("miercoles", "miercoles", "jueves", "lunes", "miercoles", "sabado", "viernes", "domingo", "martes", "lunes")
class(dias_semana)
# convertir dias_semana en factor
factor_dias_semana <-factor(dias_semana)
class(factor_dias_semana)
factor_dias_semana
# Contemos las ocurrencias para cada nivel
summary(factor_dias_semana)

# Variables categoricas ordinales
# Las variables categ�ricas ordinales tienen un orden natural. 
# Podemos especificar el orden, de menor a mayor con order = TRUE y 
# de mayor a menor con order = FALSE.

# Convirtamos dias_semana en un factor con niveles ordenados
factor_dias_ordenado <- factor(dias_semana, order = TRUE, levels =c('lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo'))
# Llamemos la nueva variable factor ordenada
factor_dias_ordenado
# Contemos las ocurrencias para cada nivel
summary(factor_dias_ordenado)