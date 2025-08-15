## Formulas para datos agrupados (Datos continuos numericos - Intervalos - Se usan en histogramas)

# Datos Agrupados

- **Sturges**:
    k = 1 + 3.222 log10(n) --> donde k es el numero total de intervalos y n el numero de elementos. (# Existen otros metodos para determinar la cantida de intervalos optimos)

- **Rango**:
    R = valor_maximo - valor_minimo


- **Amplitud**: 
    A = R/K

- **Marca de clase**:
    m = (lim_superior + lim_inferior) / 2

- **Media**:

    ![Media para datos agrupados](https://image2.slideserve.com/3885485/calculo-de-media-aritm-tica-de-datos-agrupados-l.jpg)


- **Mediana**:

    ![Mediana para datos agrupados](https://image3.slideserve.com/6208762/mediana-para-datos-agrupados-l.jpg)


    donde li es el limite inferior de la clase mediana, N el total de datos, fa o sumatorio de f es la frecuencia acumulada antes de la clase de la mediana, fmediana = frecuencia absoluta de la clase mediana, A es la amplitud de la clase.

    - Clase mediana : N/2 se busca en la columna de frecuencia acumulada el primer valor que sea igual o mayor a N/2

- **Moda**:

    ![Moda para datos agrupados](https://i.ytimg.com/vi/L7lbAWKcILk/maxresdefault.jpg)

    donde linf  es el limite inferior de la clase modal (la de mayor frecuencia), N el total de datos, a = amplitud del intervalo, fi = frecuencia absoluta de la clase modal, fi - 1 = frecuencia de la clase anteior a la modal, fi + 1= frecuencia de la clase posterior a la modal. 

- **Frecuencia Absoluta**:
    La cantidad de elementos en dicho intervalo.

- **Frecuencia Relativa**:
    Cada frecuencia entre el total de elementos. fi/n, fi+1/n, fi+2/n

- **Frecuencias acumuladas**:
    La suma de las anteriores frecuencias mas la frecuencia actual. Tanto para acumulada relativa y acumulada absoluta. 

- **Graficos**
    -  **Ojiva**:

        Grafico para cumular informacion.
        Frecuencia Acumulada vs Limite Superior --> de esta manera se grafica (Y,X)

    -  **Poligono de frecuencias**:
        COmo un histograma pero con lineas rectas

        Frecuencia Absoluta Vs Marcas de clase (Puntos medio) de intervalos de clase


- **Desviacion Estandar y Varianza**:
    Que tan dispersos estan los datos de la media.

    ![Desviacion estandar y Varianza](https://matemovil.com/wp-content/uploads/2019/10/varianza-y-desviaci%C3%B3n-est%C3%A1ndar-para-datos-agrupados-por-intervalos-f%C3%B3rmulas.jpg)


    Donde fi es la frecuencia absoluta del intervalo y xi es la marca de clase, n la cantidad de datos. 


- **Cuartiles (4 partes iguales)**:
    Nos regresa una posicion, ya que divide los datos en 4 partes iguales,
    Recordar que tambien tenemos deciles, percentiles, etc. (10 partes, 100 partes).

    Para datos no agrupados tenemos dos casos, pares e impares.

    Pares : Qk = (Kn) / 4    Qk = k(n+1) / 4

    ![Cuartiles](https://economipedia.com/wp-content/uploads/cuartil_.png)

    donde Qk = (1,2,3) 
    Li = limite inferior de la clase del cuartil. --> Calculas el Q1 por ejemplo, y buscas una clase que tenga una frecuencia acumulada >= a lo que te dio tu q1. Y asi con los demas cuartiles.

    Fi-1, frecuencia acumlada antes de la clase del cuartil.
    fi, frecuencia de la clase del cuartil
    Ai = amplitud del intervalo 

- **Interpolacion**: 
    Buscar un valor intermedio entre dos valores.
    Imagina que tienes un Q1  = 2,25 y tienes 4,7,10,12
    buscas la posicion 2 que seria 7 y lo interpolas a que este entre 7 y 10. --> 7 + (0.25) (10-7)   basicamente al 7 le sumas el porcentaje de la diferencia de el valor siguiente con el actual multiplicado por la parte decimal de tu posicion. Como decir, 7 + el porcentaje que me falta de camino. Es decir el 25% de mis datos seria menor a 7,75. 


- **Coeficiente de variacion**: 
    Que tanto varia mi desviación de la media. Se usa para comparar 2 o mas grupos.(Cuanta variabilidad hay respecto al promedio)

    cv = (sd/u) * 100%
    cv bajo indica que los datos estan muy concentrados al rededor de la media.
    cv alto indica que los datos estan muy dispersos al rededor de la media

    Util para comprar dispersion entre conjunto de datos con dierentes unidades o escalas. Para ver que tanta variabilidad hay respecto a mi media en distintos conjunto de datos.

- **Asimetria**
    
    Hacia donde estan sesgados los datos.

    ![Asimetria para datos agrupados](https://tse3.mm.bing.net/th/id/OIP.LbfUZpfnT7ZYvrzxhWAJTwHaCz?r=0&rs=1&pid=ImgDetMain&o=7&rm=3)

    - caf < 0 --> Cola izquierda, datos derecha. x̄ <= mediana <= moda 
    - caf > 0 --> cola derecha, datos izquierda. x̄ >= mediana >= moda
    - caf = 0 --> x̄ == moda == mediana

- **Curtosis**

    Como se distribuyen los datos, si estan aplanados o picudos. 

    ![Curtosis para datos agrupados](https://assets.isu.pub/document-structure/201111162654-62d6e4b562d72903a2c7aea1c6fc6650/v1/1692f5a859a00b7bcae0e3c5e9dfde5b.jpg)

    - Leptocurtica > 0 
    - Mesocurtica = 0
    - Platicurtica < 0 
