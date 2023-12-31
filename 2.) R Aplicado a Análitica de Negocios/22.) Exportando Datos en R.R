###
# Exportando datos en R
# C�mo exportar datos de R
# En esta sesi�n, aprenderemos c�mo exportar datos desde el entorno R al formato CSV.
# Este es un formato de datos separados por comas, que puede ser leido por diferentes
# programas, incluido excel 
# 
# Para exportar datos al disco duro, necesitamos la ruta del archivo, es decir 
# la ubicaci�n donde se almacenar�n los datos. 

# Para empezar, guardemos los datos directamente en el directorio de trabajo. 
# El siguiente c�digo imprime la ruta de su directorio de trabajo:

directorio <- getwd()
directorio

# Creamos un dataframe con las primeras 10 filas de trees
trees
treesexportar = trees[1:10,]
treesexportar

# La sintaxis b�sica es:
  
#  write.csv (df, ruta)

#argumentos
# -df: conjunto de datos para guardar. Debe ser el mismo nombre del marco de datos 
# en el entorno.
# -ruta: una cadena. Establezca la ruta de destino. 
# Ruta + nombre de archivo + extensi�n, es decir, 
# "/Users/USERNAME/Downloads/mydata.csv" 
# o el nombre de archivo + extensi�n si la carpeta es la misma que el 
# directorio de trabajo

write.csv(treesexportar, "treesexportar.csv")
write.csv(treesexportar, "/Users/Carlos Martinez/Documents/treesexportar.csv")
