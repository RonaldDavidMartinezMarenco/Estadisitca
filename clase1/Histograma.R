# Creamos un vector de datos numericos, en este caso reflejan tiempo, por ende, son variables cuantitativas. Para el histograma tienen que estar en orden (Teoricamente) igual R calcula el mayor y menor en una pasada. 

T  = c(63, 95, 120, 134, 145, 150, 160, 170, 185, 190, 195, 200, 210, 215, 220, 230, 235, 240, 245, 250, 255, 260, 270, 275, 280, 285, 290, 295, 300, 305, 310, 315, 320, 325, 330, 335, 340, 345, 350)

#Creamos un histograma,
hist(T, 
     main = "Histograma del tiempo en redes sociales (minutos)", 
     xlab = "Minutos diarios", 
     col = "lightblue", 
     border = "black") # Otro parametro importante es "break" que es cuantos intervalos quiero, si no lo coloco R los calcula automaticamente. 


