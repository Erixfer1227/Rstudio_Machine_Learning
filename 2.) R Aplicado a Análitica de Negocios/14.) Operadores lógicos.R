###
# Operadores L�gicos
# Los operadores l�gicos se utilizan para realizar operaciones booleanas
# Entre los operadores l�gicos tenemos
# ! NOT
# & AND l�gico elemento por elemento
# && AND l�gico para el primer elemento del objeto (vector, matriz, etc.)
# | OR l�gico elemento por elemento
# || OR l�gico para el primer elemento del objeto

# Los Operadores & y | realizan una operaci�n de elemento por elemento produciendo un 
# resultado que tenga la longitud del operando m�s largo.

# Pero && y || evaluan solo el primer elemento de los operandos que da como resultado 
# un vector l�gico de longitud �nica.

# El cero se considera FALSO y los n�meros distintos de cero se toman como 
# VERDADERO. Veamos un ejemplo

# Iniciemos creando dos vectores

x = c(TRUE, TRUE, FALSE, 0, 1, 5)
y = c(FALSE, TRUE, FALSE, 0, 0, 3)

!x
x&y
x&&y
x|y
x||y