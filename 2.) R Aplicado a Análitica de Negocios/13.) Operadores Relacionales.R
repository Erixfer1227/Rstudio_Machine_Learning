# Los operadores relacionales, o comparadores, son operadores que nos ayudan a ver 
# c�mo un objeto R se relaciona con otro.

# El operador de igualdad ==
  
# Puede verificar si dos objetos son iguales (igualdad) usando un signo 
# de igual doble ==

# Por ejemplo, comparemos las variables l�gicas
TRUE == TRUE
FALSE == TRUE

# Aparte de las variables l�gicas, podemos comparar otros tipos de variables como
# n�meros y caracteres

"hola" == "adios"
0 == 0
2 == 3
# tambi�n podemos comparar operaciones como
2 + 5 == 3 + 4
# R es sensitivo a may�sculas
"Carlos" == "carlos"

######
# El operador de desigualdad !=

# Lo opuesto al operador de igualdad son los operadores de desigualdad, 
# escritos como un signo de exclamaci�n seguido de un signo igual (!=).

# Por ejemplo, la expresi�n "hola" != "adi�s" ser�a entendida por R como 
# "hola no es igual a adi�s" lo cu�l es verdadero (TRUE)
"hola" != "adi�s"

#Otros ejemplos
TRUE != TRUE
FALSE != TRUE
1 != 0
3+2 != 2+3
# recordemos, R es sensitivo a may�sculas

"Carlos" != "carlos"

####
# Los operadores > y <

# Tambi�n hay casos en los que necesitamos algo m�s que operadores de igualdad y 
#desigualdad. Podemos usar el signo menor que < y mayor que > para esto.
# En el caso de valores num�ricos, es bastante sencillo. 
# Por ejemplo, 3 es menor que 5, por lo que 3 <5 se evaluar� como VERDADERO, 
# mientras que 3 mayor que 5 (3> 5) se evaluar� como FALSO.

3 < 5
3 > 5

# Para los n�meros, esto tiene sentido. Pero, �c�mo funcionar�a esto para cadenas 
# de caracteres y valores l�gicos?   Para las cadenas de caracteres, R usa el 
# alfabeto para ordenarlas. Entonces, "hola" > "adi�s" se evaluar�a como VERDADERO 
# ya que "H" viene despu�s de "G" en el alfabeto, y R lo considera mayor.

"hola" > "adi�s"

# Para valores l�gicos, VERDADERO corresponde a 1 y FALSO corresponde a 0. 
# Entonces, �TRUE es menor que FALSE? No, porque 1 no es menor que 0, 
# de ah� el resultado FALSO.

TRUE < FALSE

####
# Los operadores menor o igual que y mayor o igual que <= y> =
# Tambi�n podemos verificar si un objeto R es mayor o igual (o menor o igual que) 
# otro objeto R. Para hacer esto, podemos usar el signo menor que, o el signo mayor que,
# junto con el signo igual.

# Entonces, 5 mayor o igual a 3 5> = 3, as� como 3 mayor o igual que 3 3> = 3 
#se evaluar�n como VERDADERO.

5 >= 3
5 >= 5
