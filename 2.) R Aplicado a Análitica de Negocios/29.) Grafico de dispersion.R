# Veamos c�mo funciona ggplot con el conjunto de datos mtcars. 
# Empiece trazando un diagrama de dispersi�n de la variable mpg y la variable drat.
# drat es el torque del veh�culo

#Primero pasa el conjunto de datos mtcars a ggplot.
#Dentro del argumento aes (), agrega el eje xy el eje y.
#El signo + significa que desea que R siga leyendo el c�digo. 
# Hace que el c�digo sea m�s legible al romperlo.
#Utilice geom_point () para el objeto geom�trico.
str(mtcars)
ggplot(mtcars, aes(x = drat, y = mpg)) + geom_point()

# Muchas veces nos resultar� interesante distinguir entre grupos en nuestro grafico
# de dispersion. Cambiemos el color de las observaciones por el tipo 


ggplot(mtcars, aes(x = drat, y = mpg)) +
  geom_point(aes(color = factor(gear)))

# El aes () dentro de geom_point () controla el color del grupo. 
# El grupo debe ser una variable factorial. 
# Por lo tanto, convierte la marcha variable en un factor.

# Cambiar la escala de los datos es una gran parte del trabajo del cient�fico de datos. 
# En raras ocasiones, los datos vienen normalizados
# en forma de campana. Una soluci�n para hacer 
# que sus datos sean menos sensibles a los valores at�picos es cambiar su escala.

# Transforma las variables x e y en log () directamente dentro del mapeo aes ().
# Tenga en cuenta que se puede aplicar cualquier otra transformaci�n, como 
# estandarizaci�n o normalizaci�n.
# En total, tienes el c�digo aes (color = factor (engranaje)) que cambia el color 
# de los puntos.

ggplot(mtcars, aes(x = log(drat), y = log(mpg))) +
  geom_point(aes(color = factor(gear)))

# Puede agregar otro nivel de informaci�n al gr�fico. 
# Puede trazar el valor ajustado de una regresi�n lineal.
# Se intervalo de confianza

migrafica <- ggplot(mtcars, aes(x = log(drat), y = log(mpg))) +
  geom_point(aes(color = factor(gear))) +
  stat_smooth(method = "lm",
              col = "black",
              se = FALSE,
              size = 1)
migrafica

# Ahora agreguemosle t�tulos a nuestro gr�fico

migrafica +
    labs(
    x = "Millas por Gal�n, escala logar�tmica",
    y = "Torque, escala logar�tmica",
    color = "Velocidades de Tansmisi�n",
    title = "Relaci�n entre el Torque y las Millas por Gal�n",
    subtitle = "Segmentac�on por N�mero de Velocidades de Transmisi�n",
    caption = "Elaboraci�n propia con base a fuentes secundarias"
  )

ggsave("migrafica.png")
