+++
title = "Sistema de ecuaciones lineales con matrices"
author = ["Leobardo Argüelles"]
draft = false
+++

Un sistema de ecuaciones lineales se puede plantear como un producto
de [matriz]({{<relref "20210831072010-matrices.md#" >}}) por [vector]({{<relref "20210827181941-vectores.md#" >}}), de la siguiente forma:

\begin{equation\*}
Ax = b
\end{equation\*}

donde:

-   A es la matriz de coeficientes
    Los coeficientes se obtienen de las ecuaciones del sistema.
-   x es el vector de variables
    Por ejemplo: x, y, z.
-   b es el resultado, el cual es una combinación lineal de las columnas de A.

De esto se deduce también que:

\begin{equation\*}
x = A^{-1}b
\end{equation\*}

donde:

-   \\(A^{-1}\\) es la [inversa]({{<relref "20210831224318-matriz_inversa.md#" >}}) de A.

Ejemplo:
El sistema de ecuaciones:

\begin{align\*}
2x + 5y &= b\_1\\\\
3x + 7y &= b\_2
\end{align\*}

es reemplazado por la forma matricial Ax=b:

\begin{equation\*}
\begin{bmatrix}
2\ 5\\\\
3\ 7
\end{bmatrix}
\begin{bmatrix}
x\\\ y
\end{bmatrix}
=
\begin{bmatrix}
b\_1\\\ b\_2
\end{bmatrix}
\end{equation\*}

Cabe mencionar que el sistema Ax = b puede tener **una, infinitas, o ninguna solución**.


## FORMAS DE INTERPRETAR EL PRODUCTO Ax {#formas-de-interpretar-el-producto-ax}


### MULTIPLICACIÓN POR COLUMNAS {#multiplicación-por-columnas}

En esta forma, cada columna de A hace una [multiplicación escalar]({{<relref "20210827182716-producto_de_vector_con_escalar.md#" >}})
por el elemento correspondiente en x, y al final se hace la suma para completar la combinación.

Ej:

\begin{equation\*}
Ax =
\begin{bmatrix}
&1\ &2\ &3\\\\
&2\ &5\ &2\\\\
&6\ &-3\ &1
\end{bmatrix}
\begin{bmatrix}
x\\\ y\\\ z
\end{bmatrix}
=
\begin{bmatrix}
x\\\ 2x\\\ 6x
\end{bmatrix}
+
\begin{bmatrix}
2y\\\ 5y\\\ -3y
\end{bmatrix}
+
\begin{bmatrix}
3z\\\ 2z\\\ z
\end{bmatrix}
=
\begin{bmatrix}
x+2y+3z\\\\
2x+5y+2z\\\\
6x-3y+z
\end{bmatrix}
\end{equation\*}


### MULTIPLICACIÓN POR LÍNEA {#multiplicación-por-línea}

De esta forma, cada linea de la matriz de coeficientes (A) hace un
[producto punto]({{<relref "20210827184353-producto_punto.md#" >}}) con el vector de variables (x), lo que genera la matriz
resultante.

Ej:

\begin{equation\*}
Ax =
\begin{bmatrix}
&1\ &2\ &3\\\\
&2\ &5\ &2\\\\
&6\ &-3\ &1
\end{bmatrix}
\begin{bmatrix}
x\\\ y\\\ z
\end{bmatrix}
=
\begin{bmatrix}
(1,2,3) \cdot (x,y,z)^T \\\\
(2,5,2) \cdot (x,y,z)^T \\\\
(6,-3,1) \cdot (x,y,z)^T
\end{bmatrix}
=
\begin{bmatrix}
x+2y+3z\\\\
2x+5y+2z\\\\
6x-3y+z
\end{bmatrix}
\end{equation\*}


## NÚMERO DE SOLUCIONES {#número-de-soluciones}


### UNA {#una}

-   En espacio linea, las lineas intersectan en un punto.
    [Ejemplo en geogebra](https://www.geogebra.org/calculator/dgmbm6cu)
-   Matemáticamente se resuelve el sistema de ecuaciones y se obtiene

una única solución.


### INFINITA {#infinita}

-   En espacio linea, las lineas se intersectan infinitas veces.
    [Ejemplo en geogebra](https://www.geogebra.com/calculator/jjqs63tu)
-   Matemáticamente, se obtiene una ecuación del estilo: \\(0y=0\\)
    Se sabe que son infinitas porque **cualquier** valor y hará verdadera la igualdad.


### NINGUNA {#ninguna}

-   En espacio línea, las lineas son paralelas.
    [Ejemplo en geogebra](https://www.geogebra.org/calculator/w63pxdg2)
-   En espacio columna, los vectores son colineales.
-   Matemáticamente, se obtiene una ecuación similar a \\(0y=8\\)
    Esto significa que no hay soluciones porque la igualdad es falsa.


## SOLUCIÓN DEL SISTEMA DE ECUACIONES {#solución-del-sistema-de-ecuaciones}

Primero que nada hay que plantear el sistema de ecuaciones en la forma
Ax = b.

1.  Una vez que se tiene eso, se debe obtener la [matriz triangular superior]({{<relref "20210902165246-matrices_triangulares.md#" >}}) (U).
    Para hacerlo se aplica el [método de eliminación]({{<relref "20210902165958-metodo_de_eliminacion.md#" >}}).
2.  Como ya se tiene una matriz triangular, es sencillo calcular las variables, usando el [método de substitución hacia atrás]({{<relref "20210902171623-metodo_de_substitucion_hacia_atras.md#" >}}).

_Nota: Otra forma de solucionarlo es utilizar matrices elementales_
