D = c(54,15,35,13,31,27,52,10,23,80,74,27,11,19,26,10,52,30,29,61,35,95,31,26,19,12,22,68,33,27,26,19,27,35,44,37,20,31,52,17,79,25,31,44,66,78,13,30)
length(D) # Cantidad de elementos
hist(D, breaks = 5) # Histograma para saber intervalos
clases <- pretty(D) # Dejar que R ajuste los intervalos en su nivel optimo
clases

intervalos <- cut(D, breaks = clases, right = FALSE)
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

# Medidas de tendencia y de variabilidad

sd(D) # Desviacion estandar
mean(D) # Media
summary(D)

# Marcas de clase
limites_inferiores <- head(clases, -1)
limites_superiores <- tail(clases, -1)

marcas_clase <- (limites_inferiores + limites_superiores) / 2

# Mostrar marcas
print(marcas_clase)