## Tambi�n conocido como box plot, o box and whiskers plot en ingles
# Es un m�todo estandarizado para representar gr�ficamente una serie de datos num�ricos 
# a trav�s de sus cuartiles. De esta manera, el diagrama de caja muestra a simple vista 
# la mediana y los cuartiles de los datos,??? pudiendo tambi�n representar los valores 
# at�picos de estos. 

# El diagrama de caja es compuesto de los siguientes elementos:
  
# Rango (sin datos at�picos)
# Datos at�picos.
# Rango intercuartil (tambi�n conocido como RIC)
# Cuartiles (denotados como Q1, Q2 y Q3)
# Mediana (Q2)
# M�nimo y m�ximo.

# En R, el diagrama de caja (y el diagrama de bigotes) se crea usando la funci�n boxplot ().

# La funci�n boxplot () toma cualquier n�mero de vectores num�ricos, dibujando una 
# gr�fica de caja para cada vector.

# Tambi�n puede pasar una lista (o marco de datos) con vectores num�ricos como 
# sus componentes. Usemos el conjunto de datos integrado de calidad del aire que 
# tiene "Mediciones diarias de la calidad del aire en Nueva York, de mayo a septiembre 
# de 1973". - Documentaci�n R.

str(airquality)

boxplot(airquality$Ozone)

# Podemos ver que los datos por encima de la mediana est�n m�s dispersos. 
# Tambi�n podemos notar dos valores at�picos en el extremo superior.

# Podemos pasar par�metros adicionales para controlar el aspecto de nuestra trama.
# Puede leer sobre ellos en la secci�n de ayuda? Boxplot.

# Algunos de los que se utilizan con frecuencia son, main-para dar el t�tulo, 
# xlab e ylab-para proporcionar etiquetas para los ejes, col para definir el color, etc.

# Adem�s, con el argumento horizontal = TRUE podemos trazarlo horizontalmente y 
# con notch = TRUE podemos agregar una muesca al cuadro.

boxplot(airquality$Ozone,
        main = "Ozono en partes por billon en New York 1973",
        xlab = "Partes por Bill�n",
        ylab = "Ozono",
        col = "skyblue",
        border = "blue",
        horizontal = TRUE,
        notch = TRUE
)

# La funci�n boxplot () devuelve una lista con 6 componentes que se muestran a 
# continuaci�n.

b <- boxplot(airquality$Ozone)
b

# Como podemos ver arriba, se devuelve una lista que tiene stats, 
# con la posici�n de los extremos superior / inferior de los bigotes y el cuadro
# junto con la mediana, 

# n-el n�mero de observaci�n con el que se dibuja la gr�fica de caja (observe que 
# las NA no se tienen en cuenta)

# conf-extremos superior / inferior de la muesca: 

# out valor de los valores at�picos superiores

# grupo: un vector de la misma longitud que out cuyos elementos indican a qu� grupo 
# pertenecen los valores at�pico y 
# names: un vector de nombres para los grupos.

## Multiples Diagramas de Caja
# Podemos dibujar m�ltiples diagramas de caja en un solo gr�fico, pasando una lista, 
# marco de datos o m�ltiples vectores.

# Consideremos el campo de ozono y temperatura del conjunto de datos de calidad del 
# aire. Generemos tambi�n una distribuci�n normal con la misma media y desviaci�n 
# est�ndar y grafiquemos una al lado de la otra para comparar.

# preparemos los datos
ozono <- airquality$Ozone
temperatura <- airquality$Temp
# generemos una distribui�n normal con media y distribuci�n estandar
ozono_normal <- rnorm(200,mean=mean(ozono, na.rm=TRUE), sd=sd(ozono, na.rm=TRUE))
temperatura_normal <- rnorm(200,mean=mean(temperatura, na.rm=TRUE), sd=sd(temperatura, na.rm=TRUE))

# Ahora grafiquemos las cuatro variables que creamos, utilizando at and names para distinguirlos
boxplot(ozono, ozono_normal, temperatura, temperatura_normal,
        main = "Graficos multiples de Comparacion",
        at = c(1,2,4,5),
        names = c("ozono", "normal", "temp", "normal"),
        col = c("blue","red"),
        las = 2,
        border = "brown",
        horizontal = TRUE,
        notch = TRUE
)