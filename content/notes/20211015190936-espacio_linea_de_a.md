+++
title = "Espacio linea de A"
author = ["Leobardo Argüelles"]
draft = false
+++

Partiendo de una matriz \\(A\_{mn}\\), el espacio linea es el [subespacio]({{<relref "20211001110338-subespacio_vectorial.md#" >}}) de \\(R^n\\)
[generado]({{<relref "20211015185451-sistema_generador_algebra_lineal.md#" >}}) por las filas.


## ESPACIO LINEA DE A Y ESPACIO COLUMNA DE SU TRANSPUESTA {#espacio-linea-de-a-y-espacio-columna-de-su-transpuesta}

El espacio línea de una matriz A es: \\(C(A^T)\\).

Es decir, se entiende también que es igual al [espacio columna]({{<relref "20211003105934-espacio_columna_de_a.md#" >}}) de \\(A^T\\).

Por ejemplo:

\begin{equation\*}
A=
\begin{bmatrix}
1\ 4\\\\
2\ 7\\\\
3\ 5\\\\
\end{bmatrix}\\; \\; y \\; \\;
A^T=
\begin{bmatrix}
1\ 2\ 3\\\\
4\ 7\ 5\\\\
\end{bmatrix}
\end{equation\*}

De aquí se visualiza que el **espacio línea** de A es generado por sus 3
líneas, y _abarca_ a todo el plano cartesiano \\(R^2\\)
Además, ese espacio línea es exactamente igual que el espacio columna de
A [transpuesta]({{<relref "20210928201705-matriz_transpuesta.md#" >}}).


## DIMENSIÓN {#dimensión}

Tiene dimensión _r_ (es decir, es igual al [rank]({{<relref "20211005132127-rank_de_matriz.md#" >}}))

Se complementa con la [dimensión del espacio nulo]({{< relref "20211003115744-espacio_nulo" >}}) que es _n-r_, y
entre los dos completan todo _n_.
