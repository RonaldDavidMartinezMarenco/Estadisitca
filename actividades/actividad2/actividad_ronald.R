install.packages("moments")
install.packages("psych")
library(moments)
library(dplyr)


# Medidas de Variabilidad y De Forma

G = c(19, 19, 19, 20, 21, 21, 25, 25, 25, 26, 26, 28, 29, 31, 31, 32, 32, 33, 34, 35, 36, 37, 37, 38, 38, 38, 38, 41, 43, 43)


# Desarrollo Pregunta 3
'''

A ) 7 personas recordaron 2 argumentos.		
B ) 3 argumentos representa el 20%			
C ) El 25% de las personas recordaron solo un argumento a favor de la compra del producto.		
D ) 3 Personas recordaron 4 y 5 argumentos del producto. 

E)  Es poco común que una persona recuerde todos los argumentos de un anuncio, ya que la 
    capacidad de retención del cerebro humano es limitada. La persona que logró 
    recordarlos todos probablemente tenía un interés particular en el producto, prestó 
    mucha atención al anuncio o posee una memoria excepcionalmente buena. 
    Es un resultado atípico que no representa a la mayoría de los consumidores.

F) El hecho de que una persona no recordara ningún argumento es un resultado común y 
   esperado en este tipo de estudios. Esto puede deberse a la falta de interés en 
   el producto, distracciones durante el anuncio o que el anuncio en sí mismo no fue lo 
   cientemente llamativo o memorable para la persona. Este resultado destaca la 
   importancia de crear campañas publicitarias que sean atractivas y efectivas para 
   la audiencia, de modo que la información se retenga.
   
	-Ronald Martínez
'''
clases <- pretty(G) # Dejar que R ajuste los intervalos en su nivel optimo
clases

# Histograma
hist(G, breaks = clases, right = FALSE, 
     col = "skyblue", border = "blue", 
     xlab = "Millas por Galón", 
     ylab = "Frecuencia", 
     main = "Histograma de Millas por Galón")


intervalos <- cut(G, breaks = clases, right = FALSE)
intervalos

# Frecuencia absoluta
frecuencia <- table(intervalos)
frecuencia

# Frecuencia relativa
frecuencia_relativa <- prop.table(frecuencia)
frecuencia_relativa

# Frecuencia acumulada
frecuencia_acumulada <- cumsum(frecuencia)
frecuencia_acumulada

# Frecuencia Relativa Acumulada
frecuencia_relativa_acum <- cumsum(frecuencia_relativa)
frecuencia_relativa_acum

tabla_frecuencia <- data.frame(
  Intervalo = names(frecuencia),
  Frecuencia = as.numeric(frecuencia),
  FrecuenciaRelativa = round(as.numeric(frecuencia_relativa), 3),
  FrecuenciaAcumulada = as.numeric(frecuencia_acumulada),
  FrecuenciaRelativaAcumulada = as.numeric(frecuencia_relativa_acum)
)
print(tabla_frecuencia)

limites_inferiores <- head(clases, -1)
limites_superiores <- tail(clases, -1)

marcas_clase <- (limites_inferiores + limites_superiores) / 2

# Mostrar marcas
print(marcas_clase)

# Medidas de Variabilidad y Forma

media_ponderada <- sum(marcas_clase * as.numeric(frecuencia)) / sum(frecuencia)

# Calcular la desviación estándar
desviacion_estandar <- sqrt(sum(frecuencia * (marcas_clase - media_ponderada)^2) / 29)

# Calcular la asimetría (skewness)
asimetria <- sum(frecuencia * (marcas_clase - media_ponderada)^3) / (sum(frecuencia) * desviacion_estandar^3)

# Calcular Curtosis
curtosis <- sum(frecuencia * (marcas_clase - media_ponderada)^4) / (sum(frecuencia) * desviacion_estandar^4) - 3

# Mostrar resultados
media_ponderada
desviacion_estandar 
asimetria #Asimetria < 0 Indica que Cola izquierda, datos derecha. x̄ <= mediana <= moda
curtosis # Platicurtica, indica que los datos estan mas alejados uno de otros.