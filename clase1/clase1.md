# **ESTADISTICA 1/08/2025**


- **Muestra**: Subconjunto de la Poblacion.
- **Poblacion**: Total de elementos a estudiar una vez definida la variable a tratar.
- **Caracteristica**: Variable que se puede medir.
    - Si la caracteristica, se mide en la poblacion se conoce como parametro. Si se mide fuera de la poblacion se conoce como estadistica. 


## **Clasificacion de variables**

Las variables se clasifican en **Cualitativa** y **Cuantitativa**, respectivamente, la primera trata sobre una categoria o cualidad que se le asigna a una variable, mientras, que a las cualitativas se les asigna operaciones numericas, **ej**: edad, peso, imc, altura, etc.  

Cuando es cualitativa usamos conteo o frecuencia. Ademas, se usa un diagrama de barras o un diagrama de pastel (Porcentajes). 

En el caso de variables cuantitativas y datos agrupados usáramos histogramas de frecuencias, los métodos para crearlo puede ser el método de Sturges, el método de la raíz o el método optimo.
### Escala y graficos

- **Cualitativas**
    - **Nominal** : Categorias sin orden, **ej**: Sexo, Color, Pais
        - Graficos: Barras,Pastel, tabla de frecuencias. 
    - **Ordinal** : Categorias ordenadas sin distancia numerica clara **ej**: estrato, nivel de  sastifaccion
        - Graficos: barras,pastel, caja de bigotes 

- **Cuantitativas**
    - **Discreta**:
        - Graficos: Numero finito de valores --> edad, usalmente son enteros.
    - **Continua**:
        - Graficos: Numero infinito de valores --> Tiempo que se gasta en recorrer cierta calle, altura de una persona. Se dice infinito ya que toma valoes infinitos dentro de un intervalo dado, ya que es decimal, 1.73 , 1.72, 1.89 como es el caso de la altura. Pueden ser enteros y decimales.

## Breve definicion del metodo de Sturges:
El metodo de Sturges, busca darnos el numero de intervalos necesarios para variables cuantitativas, **k = 1 + 3.322 log 10(n)** , donde **k** es el numero de intervalos y **n** el numero total de datos. Para usar el dato de la cantidad de intervalos, hallamos el rango (Valor maximo - Valor minimo, de mi dataset) para luego hallar la amplitud **r/k** el rango entre la cantidad de intervalos. 

- Minimo : Limite inferior
- Maximo : Limite Maximo

Si tengo 40-10 = 30 y Sturges me dice que la cantidad de intervalos necesarios es 5, entonces tenemos que 30/5 = 6, es decir, los intervalos iran de 6 en 6 desde el valor minimo hasta el maximo. Es decir, en que cantidad tengo q dividir la distancia del minimo al maximo. 


## Tabla de Frecuencias
Permite organizar datos ya sean individuales o en intervalo. Incluye frecuencia, frecuencia relativa, frecuencia acumulada, frecuencia relativa acumulada. Estos datos se pueden usar en graficos que ayuden a visualizar de una majoer manera los datos y encontrarr informacion relevante de manera mas rapida. 

- **Frecuencia**: Cantidad de veces que aparace un dato.

- **Frecuencia relativa**: Proporcion de las veces que aparece un dato entre la cantidad de elementos.

- **Frecuencia acumulada**: La suma de de las frecuencias anteriores mas la actual. Da como resultado el "n" de los datos. (Suma progresiva)

- **Frecuencia relativa acumulada**: La misma idea que la anterior pero con la proporcion, y tiene que dar 1 como resultado.

- **Frecuencia relativa porcentual**: Lo mismo que la relativa normal, pero multiplicado po 100. 

## Graficos utilizados
- Grafico de barras: Cualitativas
- Grafico de Pastel : Cualitativas porcentaje
- Histograma: Intervalos cuantitativas (Metodo de Sturges)

> Nota: Esta informacion se encontro de la clase dada por el docente: Jair Jose Pallares Castellon.