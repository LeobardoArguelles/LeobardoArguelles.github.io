+++
title = "Metodo de eliminacion"
author = ["Leobardo Argüelles"]
draft = false
+++

Este método busca crear una [matriz triangular superior]({{<relref "20210902165246-matrices_triangulares.md#" >}}).

Es el método que ya conozco para resolver ecuaciones lineales:

1.  Se plantean las ecuaciones
2.  Se multiplica una igualdad por el recíproco del primer término, y eso se mutiplica por el primer término de la siguiente igualdad.
3.  Se repiten estos pasos hasta que se obtiene la matriz triangular superior.

En general, si nuestras ecuaciones son:

\begin{align\*}
2x+4y-2z&=2\\\\
4x+9y-3z&=8\\\\
-2x-3y+7z&=10
\end{align\*}

Generan el sistema Ax = b:

\begin{equation\*}
\begin{bmatrix}
&2\ &4\ &-2\\\\
&4\ &9\ &3\\\\
&-2\ &-3\ &7
\end{bmatrix}
\begin{bmatrix}
x\\\ y\\\ z
\end{bmatrix}
=
\begin{bmatrix}
2\\\ 8\\\ 10
\end{bmatrix}
\end{equation\*}

E intentamos convertirla en una matriz **U**:

\begin{equation\*}
\begin{bmatrix}
&2\ &4\ &-2\\\\
&0\ &9\*m\_1\ &3\*m\_1\\\\
&0\ &0\ &7\*m\_2
\end{bmatrix}
\begin{bmatrix}
2\\\ 8\*m\_1\\\ 10\*m\_2
\end{bmatrix}
\end{equation\*}

Donde \\(m\_1\\) y \\(m\_2\\) son los multiplicadores utilizados para anular el primer
término de cada ecuación.

Ejemplo:

\begin{align\*}
l\_1 = 4x-8y &= 4\\\\
l\_2 = 3x+2y &= 11\\\\
\\\\
l\_{12}:(3x+2y) &= m\_1\*l\_1 + l\_2
\\\\
m\_1\*l\_1 = \frac{-3}{4} (4x-8y = 4) \implies & -3x+6y = -3\\\\
-3x+6y &= -3\\\\
+3x+2y&= 11\\\\
8y &= 8
\end{align\*}

Notas:

-   Los multiplicadores (\\(m\_1\\)) se obtienen multiplicando el recíproco del primer coeficiente de \\(l\_1\\) por el primer coeficiente de \\(l\_2\\), y poniéndole el signo adecuado para eliminar la primer variable.
    En este caso, la primer variable es \\(x\\), así que los coeficientes serán 4 (recíproco es \\(1/4\\)) y 3.
-   Lo que nos importa obtener con este proceso es \\(l\_{12}\\) (\\(8y = 8\\)), la cual es una ecuación simplificada que será usada para formar la matriz triangular \\(U\\).
-   Si la matriz es mayor a 2x2, se debe calcular \\(l\_{13}, l\_{14}, \dots l\_{1n}\\), y luego con esas seguir eliminando variables, calculando entonces \\(l\_{23}, l{24}, \dots l{2n}\\), y continuar hasta formar la matriz **U**.

Entonces, usando \\(l\_1\\) y \\(l\_{12}\\), formamos \\(U\\):

\begin{equation\*}
U =
\begin{bmatrix}
4\ &-8\\\\
0\ &8
\end{bmatrix}
\end{equation\*}


## COSTO DE ELIMINACIÓN {#costo-de-eliminación}

-   Para eliminar cada elemento (hacerlo 0) y llegar a la matriz U,
    se requieren 2 operaciones por elemento.
    -   1 suma
    -   1 producto
-   Para hacer 0 todos los elementos en la columna del primer pivote, se requiere hacer lo anterior n(n-1) veces

    -   n-1 representa las filas debajo del pivote \\(a\_{11}\\)
    -   n es la cantidad de columnas

    Esto va equivaler a un orden de \\(O(n^2)\\).
-   Para el segundo pivote, se hacen las operaciones (n-1)(n-2) veces
    -   (n-2) es la cantidad de filas
        Se reduce porque el próximo pivote a usar como base está en una fila más abajo.
    -   (n-1) es la cantidad de columnas
        Una menos que la anterior, porque la matriz a modificar se reduce, pues la primera
        columna tendrá 1 en el pivote, y abajo ceros. Estos ceros ya no se modifican.
-   Esto se repite, cada vez con menos filas y columnas, hasta llegar a este resumen:

| Pivote | 1   | 2       | 3       | ... | n |
|--------|-----|---------|---------|-----|---|
| Costo  | n^2 | (n-1)^2 | (n-2)^2 | ... | 1 |

Este costo es un polinomio donde se suman todos los costos por pivote, el cual
en este caso representa una serie, que se puede representar de forma
cerrada como:

\begin{equation\*}
\sum \_{k=1} ^{n} n^2 = \frac{1}{6}\ n(n+1)(2n+1)
\end{equation\*}

El polinomio que representa el costo será, entonces, la parte derecha
de esta igualdada anterior.
Al desarrollar el polinomio, llegaremos a \\(n^3\\), por lo que el costo
del algoritmo será: \\(O\left( n^3 \right)\\).
Esto significa que se realizarán:

-   \\(n^3\\) sumas

-   \\(n^3\\) productos
