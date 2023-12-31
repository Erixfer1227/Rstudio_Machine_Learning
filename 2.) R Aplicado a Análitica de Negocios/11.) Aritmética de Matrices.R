# Aritm�tica de Matrices
# En la aritm�tica de matrices debemos reconocer tres tipos de operaciones:
# A. Escalar por Matriz
# B. Las que se realizan elemento por elemento entre dos matrices: en este caso, 
# las matrices # deben tener la misma dimensi�n, es decir, el mismo n�mero de filas y 
# columnas
# C. La multiplicaci�n vectorial: en este caso, el n�mero de columnas de la
# primer matriz, debe ser igual al n�mero de filas de la segunda matriz

# Ejemplos de operaciones de escalar por matriz

# Creamos la matriz
Matriz = matrix(1:15, ncol=5)
Matriz

# Sumamos 5 a cada elemento de la Matriz
5+Matriz

# Ahora restamos 2 a cada elemento de la Matriz

-2+ Matriz

# Ahora multiplicamos por 3 cada elemento de la Matriz

3*Matriz

# Ahora hagamos ejemplos de operaciones elemento por elemento 
# Crear otra matriz de las mismas dimensiones de Matriz
Matriz1 = matrix (16:30, ncol=5)

# Ahora sumo las matrices y la guardo como Matriz2
Matriz2= Matriz + Matriz1

#Ahora multiplico Matriz2 y Matriz1, elemento por elemento
Matriz2*Matriz1

#Creo una matriz con dimensi�n diferente
Matriz4X4 = matrix(1:16, ncol=4)

#Intento multiplicar elemento or elemento Matriz original y Matriz4X4
Matriz*Matriz4X4
# Recibo un error porque no tienen la misma dimensi�n

# Veamos un ejemplo de multiplicaci�n vectorial, en este caso, las matrices
# deben tener la forma de ixn %*% nxj, es decir, el n�mero de 
# columnas de la primera matriz, deben ser igual al n�mero de filas de la 
# segunda.

Matriz5 = matrix(1:15, nrow=5)
Matriz%*%Matriz5

# Voy a probar multiplicar vectorialmente dos matrices con la misma dimensi�n
Matriz%*%Matriz1
# Obtengo un error

Matriz2%*%Matriz5
