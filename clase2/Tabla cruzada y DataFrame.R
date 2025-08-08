# Importa paquetes

library(dplyr)
library(repmis)

# Cargar data
source_data("https://github.com/hllinas/DatosPublicos/blob/main/Estudiantes.Rdata?raw=false") #Cargamos el dataset.Se puede usar load(file = 'Estudiantes.Rdata')
datosCompleto <- Estudiantes

# Mostrar datos

datosCompleto

head(datosCompleto)        #A) Por defecto, solo las primeras 6 observaciones 
head(datosCompleto, 3)     #B) Solo las primeras 3 observaciones 
tail(datosCompleto)        #C) Por defecto, solo las últimas 6 observaciones 
tail(datosCompleto, 2)     #D) Solo las últimas 2 observaciones 

str(datosCompleto)   #A) Estructura de los datos
names(datosCompleto) # Muesta columnas o variables

# Tamaños
length(datosCompleto)   #B) Revisando número de variables del objeto
dim(datosCompleto)      #C) Muestra las dimensiones del objeto.
ncol(datosCompleto)     #D) Muestra el número de columnas del objeto.
nrow(datosCompleto)     #E) Muestra el número de filas del objeto.

Muestra1 <- datosCompleto[1:10,2:7] # Si no se indica i, quiere decir todas las filas. Si no se indica J toda las columnas. [i:j, i:j] si se coloca negativo indica quitar fila o columna. 
Muestra1

Muestra1[,-2] # Elimina columna 2
Muestra1[,2:5]  # Manten ls filas y solo muestra la columna 2 a 5
Muestra1[,c(2,5)]  # todas las filas y solo muestra la columna 2 y 5

Muestra1

str(datosCompleto)   #A) Estructura de los datos
Codigo <- datosCompleto$ID   #B) Si es tipo caracter, es correcto) # vector con los valores id
Edad <- datosCompleto$Edad   #C) Si es tipo caracter, es incorrecto (ver ejemplo 4) # vector con los valores de edad
Sexo <- datosCompleto$Sexo   #D) Si es tipo caracter, es incorrecto (ver ejemplo 5) # vector con los valores de sexo

Edad <- as.numeric(datosCompleto$Edad) 
Sexo <- as.factor(Sexo) 
class(Sexo)
str(Sexo)   
levels(Sexo)   # valores que toma dicha variable


# Tabla de frecuencias 
Tabla1 <- table(Sexo); Tabla1    
Fuma <- as.factor(datosCompleto$Fuma) 
Tabla2 <- table(Sexo, Fuma); Tabla2    # Tabla cruzada o de contingencia

Cuentas1 <- table(Sexo)                 #A) Tabla de frecuencias no agrupadas para Sexo
Cuentas1
barplot(Cuentas1,                       #B) Se aplica barplot a esa tabla
        main="TITULO GENERAL",          #C) Título principal     
        xlab="Eje X",                   #D) Tíulo del eje X
        ylab="Eje Y",                   #E) Título del eje Y
        legend = rownames(Cuentas1),    #F) Mostrar las leyendas
        ylim = c(0, 300),               #G) Ajustar límites en eje Y
        col=c("pink","blue")            #H) Colorear las barras
        )         
                      
Cuentas2 <- table(Sexo, Fuma)  
Cuentas2				              #A) Tabla de frecuencias no agrupadas para Sexo y Fuma
rownames(Cuentas2)
barplot(Cuentas2,                            #B) Se aplica barplot a esa tabla
        main="Diagrama de barras",           #C) Título principal     
        xlab="Fuma",                         #D) Tíulo del eje X
        ylab="Frecuencias",                  #E) Título del eje Y
        legend = rownames(Cuentas2),         #F) Mostrar las leyendas
        ylim = c(0, 200),                    #G) Ajustar límites en eje Y
        col=c("moccasin","mediumseagreen"),  #H) Colorear las barras
        beside=TRUE                          #I) Para agrupar las barras
        ) 
