+++
title = "Mapas de Karnaugh"
author = ["Leobardo Argüelles"]
draft = false
+++

Los mapas proveen un sistema para simplificar ecuaciones booleanas, resultando
en expresiones [POS]({{<relref "20211104081955-producto_de_sumas_algebra_booleana.md#" >}}) o [SOP]({{<relref "20211018123453-suma_de_productos_algebra_booleana.md#" >}}) en su mínima expresión.

Es similar a una tabla de verdad, porque tiene \\(2^n\\) celdas, donde _n_ es el
número de variables, y además muestra todas las posibles combinaciones de
entrada, y sus posibles resultados.

Para reducir, hay que elegir entre trabajar la ecuación utilizando [suma de productos]({{<relref "20211018123453-suma_de_productos_algebra_booleana.md#" >}}) o [producto de sumas]({{<relref "20211104081955-producto_de_sumas_algebra_booleana.md#" >}}).

Para elegir cual de las dos se usa:

1.  Haz la tabla de verdad
2.  Si son más 1s que 0s, usa SOP (minitérminos)
3.  En caso contrario, usa POS (maxitérmino)


## ARMAR EL MAPA DE KARNAUGH {#armar-el-mapa-de-karnaugh}

Hay que llevar la ecuación a su forma [SOP Canónica]({{<relref "20211018123453-suma_de_productos_algebra_booleana.md#" >}})


## REDUCCIÓN PARA SOP USANDO K-MAP {#reducción-para-sop-usando-k-map}

Se utiliza cuando hay más unos que ceros en la tabla de verdad.
Se siguen las reglas de minitérmino para representar los valores:

-   0 = Literal negada
-   1 = Literal normal


### AGRUPAR LOS UNOS {#agrupar-los-unos}

1.  Hay que maximizar el tamaño de los grupos y minimizar el número de grupos
    1.  Los grupos pueden ser de 1, 2, 4, 8, 16 celdas, etc.. (En potencias de 2)
    2.  Cada celda en un grupo debe ser adyacente a una o más celdas del mismo grupo, pero no todas tienen que ser adyacentes entre ellas.
    3.  Siempre incluir la mayor cantidad de 1s, respectando la regla 1.
    4.  Cada 1 en el mapa debe estar en un grupo. Los 1s ya en un grupo pueden incluirse en otro grupo, siempre y cuando los grupos que se traslapen tengan 1s que no compartan.
        (Tipo la regla de The Greatest Zimbabwe para poner artesanos)
    5.  Nota: Recuerda que el mapa "puede doblarse" por la mitad, tanto horizontal como verticalmente, para juntar más filas/columnas en un mismo grupo.
        ![](/ox-hugo/doblez_horizontal.png)  ![](/ox-hugo/doblez_vertical.png)


### OBTENER LA ECUACIÓN {#obtener-la-ecuación}

Cada grupo creado genera un minitérmino compuesto de todas las variables
que **solo ocurren de una forma** (ya sea complementada o no).

Es decir, nos fijamos en el estado de cada variable, y eliminamos a las
que cambien de valor (por ejemplo, de 0 a 1, o viceversa).

Ejemplo de un grupo para A, B, C. El grupo se armó con estas combinaciones:

| A | B | C |
|---|---|---|
| 0 | 1 | 1 |
| 1 | 1 | 1 |

Entonces, A se elimina, y obtenemos el producto BC.

Esto se repite para cada grupo formado, y la ecuación se forma sumando
todos los productos obtenidos.


## REDUCCIÓN PARA POS USANDO K-MAP {#reducción-para-pos-usando-k-map}

Cuando hay más ceros que unos, se aplican **las [mismas reglas](#reducción-para-sop-usando-k-map)** que para
SOP, pero en este caso se agrupan los 0s, y se usan las reglas de
maxitérmino para representar variables:

-   0 = Literal normal
-   1 = Literal negada


## MAPA DE 3 VARIABLES {#mapa-de-3-variables}

| Tamaño del grupo        | Resultado del minitérmino |
|-------------------------|---------------------------|
| 1 celda                 | 3 variables               |
| 2 celdas                | 2 variables               |
| 4 celdas                | 1 variable                |
| 8 celdas (todo el mapa) | Genera un 1 constante     |


## MAPA DE 4 VARIABLES {#mapa-de-4-variables}

| Tamaño del grupo         | Resultado del minitérmino |
|--------------------------|---------------------------|
| 1 celda                  | 4 variables               |
| 2 celdas                 | 3 variables               |
| 4 celdas                 | 2 variables               |
| 8 celdas                 | 1 variable                |
| 16 celdas (todo el mapa) | Genera un 1 constante     |
