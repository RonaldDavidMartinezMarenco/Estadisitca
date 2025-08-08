#This code is to show categorical variables in different charts like: barplots and piecharts

T = c(1,2,3,4,5)
names(T) = c("M", "S", "I", "X", "H")# debe se de la misma longitud q el vector T

T # Muestro la estructura final
names(T) # Muestro las etiquetas

percent_labels = round(100 * T / sum(T), 1) # Cada valor ente el total multiplicado por 100. 
					    # Redondea a un digito, si no colocas el 1. Redondea a 0 digitos. 
percent_labels # Muestro lo porcentajes					# Vector numerico

is.vector(percent_labels)   
typeof(percent_labels)      
attributes(percent_labels)  


labels = paste0(names(T), ": ", percent_labels, "%")#Function paste0 que imprime sin espacios entre argumentos. "M: 6%" 

is.vector(labels)   
typeof(labels)      
attributes(labels)

pie(T, labels = labels, col = rainbow(length(T)), main= "Diagrama de pastel")
barplot(T,xlab = "Marca", ylab="Frecuencia", col = c("pink", "lightblue")) # Col es un vector de colores o un solo color


