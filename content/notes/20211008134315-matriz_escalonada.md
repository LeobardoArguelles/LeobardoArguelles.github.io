+++
title = "Matriz Escalonada Reducida"
author = ["Leobardo Argüelles"]
draft = false
+++

Esta matriz es generada aplicando [eliminación]({{<relref "20210902165958-metodo_de_eliminacion.md#" >}}) a una matriz **rectangular**.

Si se trabaja con una matriz cuadrada, la eliminación se detiene al generar
la [matriz triangular U]({{<relref "20210902165246-matrices_triangulares.md#" >}}).


## PRODUCIENDO LA MATRIZ R {#produciendo-la-matriz-r}

Hablando de matrices rectangulares, podemos llegar a la forma escalonada
reducida _R_ aplicando los siguientes 2 pasos:

1.  Producir ceros arriba de los pivotes.
2.  Producir unos en los pivotes.


### EJEMPLO {#ejemplo}

Partiendo de una matriz U:

\begin{equation\*}
U=
\begin{bmatrix}
1\ 2\ 2\ 4\\\\
0\ 2\ 0\ 4\\\\
\end{bmatrix}
\end{equation\*}

Esta se va convertir en R:

\begin{equation\*}
R=
\begin{bmatrix}
1\ 0\ 2\ 0\\\\
0\ 1\ 0\ 2\\\\
\end{bmatrix}
\end{equation\*}


## ¿POR QUÉ PRODUCIR R? {#por-qué-producir-r}

Al llegar a esta forma reducida, es más fácil encontrar las soluciones
especiales que generan el [espacio columna]({{<relref "20211003105934-espacio_columna_de_a.md#" >}}) y el [espacio nulo]({{<relref "20211003115744-espacio_nulo.md#" >}}) de un sistema.
