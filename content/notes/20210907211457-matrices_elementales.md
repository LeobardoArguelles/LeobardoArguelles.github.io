+++
title = "Matriz Elemental"
author = ["Leobardo Argüelles"]
draft = false
+++

Es una variante de la [Matriz Identidad]({{<relref "20210831224956-matriz_identidad.md#" >}}), la cual, además de la diagonal de unos,
tien **un único elemento** con valor distinto a cero, el cuál afectará a la matriz
por la cual se multiplice esta matriz elemental.

Ej:

\begin{equation\*}
E\_{13} =
\begin{bmatrix}
1\ 0\ \frac{1}{4}\\\\
0\ 1\ 0\\\\
0\ 0\ 1\\\\
\end{bmatrix}
\end{equation\*}


## CREACION DE LA MATRIZ ELEMENTAL {#creacion-de-la-matriz-elemental}

\\(E\_{ij}\\) es la matriz identidad con multiplicador \\(-\ell \_{ij}\\) en su
posición i,j, donde \\(-\ell \_{ij}\\) es el valor que se usará para
afectará a la posición (i, j) de la matriz multiplicada.

_Nota: La posición (i,j) es la que queremos modificar, pero el multiplicador_
_afectará en realidad a toda la fila i, al sumarle \\(\ell\\) veces la linea
j._

Pasos para estimar \\(E\_{ij}\\), donde (i,j) es la posición del elemento
a alterar:

1.  Antes que nada, hay que colocarnos en la columna donde se ubica el elemento a trabajar.
2.  Seleccionar el pivote p, ubicado en la fila j-ésima, en la columna del elemento a trabajar.
3.  Seleccionar el elemento q que se quiere transformar de la fila i-ésima (este es el elemento a trabajar).
4.  Para eliminar el elemento, estimar el multiplicador \\(\ell \_{ij}\\) como \\(-\frac{q}{p}\\).
5.  Hacer la multiplicación de matrices \\(E\_{ij}A\\).
    **Nota: El orden importa, primero va \\(E\_{ij}\\).**
    Esto afectará al elemento en (i, j), y probablemente a algunos otros.


### EJEMPLO {#ejemplo}

Para una matriz A, buscando eliminar el elemento en \\(A\_{21}\\)

Ej:

\begin{equation\*}
A =
\begin{bmatrix}
&2\ &4\ &-2\\\\
&4\ &9\ &-3\\\\
&-2\ &-3\ &7\\\\
\end{bmatrix}
\end{equation\*}

\\(\ell = -\frac{4}{2} = -2\\)

\begin{equation\*}
E\_{21} =
\begin{bmatrix}
&1\ &0\ &0\\\\
&-2\ &1\ &0\\\\
&0\ &0\ &1\\\\
\end{bmatrix}
\end{equation\*}


## CALCULAR LA INVERSA DE UNA MATRIZ ELEMENTAL {#calcular-la-inversa-de-una-matriz-elemental}

[Matriz inversa de una matriz elemental]({{<relref "20210918123533-matriz_inversa_de_una_matriz_elemental.md#" >}})
