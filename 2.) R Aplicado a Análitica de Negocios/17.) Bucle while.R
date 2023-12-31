#####

# Los bucles se utilizan en la programaci�n para repetir un bloque de c�digo espec�fico.
# En esta sesi�n, aprenderemos a crear un bucle while en la programaci�n R.

# Los bucles while se utilizan para iterar un bloque de c�digo hasta que se cumpla 
# cierta condici�n

# Sintaxis del bucle while

while (expresion_a_evaluar)
{
  declaracion
}

# Aqu�, expresion_a_evaluar se eval�a y se ingresa el cuerpo del bucle 
# si el resultado es TRUE

# Las declaraciones dentro del ciclo se ejecutan y el flujo regresa para 
# evaluar expresion_a_evaluar nuevamente.

# Esto se repite cada vez hasta que expresion_a_evaluarse eval�a como FALSE, 
# en cuyo caso, el bucle finaliza.

# Veamos un ejemplo

i <- 1
while (i < 6) {
  print(i)
  i = i+1
}