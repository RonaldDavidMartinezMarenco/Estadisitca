# How to work with MTC

J = c(25,30,35,40,45.25,30,35,40,45)
summary(J)

E = c(18,19,20,21,22,23,24)
mean(E)
summary(E)
var(E)
sd(E)
# Coeficiente de Variacion 
cv = (sd(E) / mean(E) )*100
cv

# Tabla de frecuencias

# Vector original
t <- c(63, 95, 120, 134, 145, 150, 160, 170, 185, 190, 195, 200, 210, 215, 220, 230, 235, 240, 245, 250, 255, 260, 270, 275, 280, 285, 290, 295, 300, 305, 310, 315, 320, 325, 330, 335, 340, 345, 350)

# Puntos de corte
breaks_custom <- seq(50, 350, by = 50)

# Histograma sin graficar
h <- hist(t, breaks = breaks_custom, plot = FALSE)

# Crear etiquetas para intervalos, mapeando head con tail de manera repetitiva while
intervalos <- paste0(head(breaks_custom, -1), "-", tail(breaks_custom, -1))
intervalos 

# Verificar longitudes
print(length(intervalos))
print(length(h$counts))

# Crear tabla de frecuencias
tabla_frecuencias <- data.frame(
  Intervalo = intervalos,
  Frecuencia = h$counts
)

print(tabla_frecuencias)

#tail(x, n = 6) si n es negativo devuelvo todo menos la	primeras n filas, positivo devuelvo las ultimas 6 filas 
#head(x, n = 6) si n es negativo devuelvo todo menos las ultimas n filas, positivo devuelvo las primeras 6 filas
breaks_custom
# Calcular la media para datos agrupados con estos intervalos
marcas_clase <- head(breaks_custom, -1) + diff(breaks_custom)/2 #100 + 25, 150 +25 VALOR MEDIO ENTRE INTERVALOS
frecuencias <- h$counts
media_agrupada <- sum(marcas_clase * frecuencias) / sum(frecuencias)
media_agrupada
# CALCULAR MODA PARA DATOS AGRUPADOS
# Encontrar el intervalo modal
frecuencias_df <- tabla_frecuencias$Frecuencia
intervalo_modal_indice <- which.max(frecuencias_df)

# Frecuencias
frec_modal <- frecuencias_df[intervalo_modal_indice]
frec_anterior <- frecuencias_df[intervalo_modal_indice - 1]
frec_siguiente <- frecuencias_df[intervalo_modal_indice + 1]

# Diferencias
d1 <- frec_modal - frec_anterior
d2 <- frec_modal - frec_siguiente

# Límite inferior y amplitud
L <- breaks_custom[intervalo_modal_indice]
w <- diff(breaks_custom)[intervalo_modal_indice]

# Calcular la moda
moda_agrupada <- L + (d1 / (d1 + d2)) * w
print(moda_agrupada)

# Coeficiente de Asimetrica (Cola a la derecha)
a = (mean(t)-0)/sd(t)

install.packages("moments")
library(moments)
kurtosis(t) # Con este caso seria LeptoCurtica > 0 
