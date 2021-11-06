+++
title = "Matriz de Permutación"
author = ["Leobardo Argüelles"]
draft = false
+++

Es similar a la [matriz identidad]({{<relref "20210831224956-matriz_identidad.md#" >}}), pero con 2 filas intercambiadas para que,
al multiplicarla por otra matriz, se haga el mismo intercambio.

\begin{equation\*}
I =
\begin{bmatrix}
1\ 0\ 0\\\\
0\ 1\ 0\\\\
0\ 0\ 1\\\\
\end{bmatrix}
\end{equation\*}

\begin{equation\*}
P\_{23} =
\begin{bmatrix}
1\ 0\ 0\\\\
0\ 0\ 1\\\\
0\ 1\ 0\\\\
\end{bmatrix}
\end{equation\*}


## UTILIDAD DE MATRIZ PERMUTACIÓN {#utilidad-de-matriz-permutación}

Esta matriz se vuelve importante cuando se obtiene un sistema \\(Ax=b\\)
donde **no es posible** aplicar [eliminación]({{<relref "20210922195503-a_lu.md#" >}}), pues hay un cero en los
pivotes.

Para resolverlo, se aplica una matriz permutacion a A, la cual sí será
posible [factorizar]({{<relref "20210922202821-factorizacion_ldu_de_a.md#" >}}):

\begin{equation\*}
PA = LU
\end{equation\*}

Tomando en cuenta ahora la permutacion, para ciertos casos probablemente
aplica hacer permutaciones durante el proceso de eliminación
para mejorar la eficiencia y disminuir el costo del método.

Pero hay que tener cuidado, puest todas esas matrices deben tomarse
en cuenta para el resto de las operaciones.

Entonces, si antes la matriz _L_ era nada más la inversa de las matrices
elementales:

\begin{equation\*}
L=E^{-1}
\end{equation\*}

Ahora puede que esten mezclados los productos de matrices elementales
y de permutacion:

\begin{equation\*}
L=E^{-1}P^{-1} \dots P^{-1}E^{-1}
\end{equation\*}

El orden de esta^ secuencia depende de cada caso particular, y qué
tipo de operacions se realizaron durante el proceso de eliminacion.


## CANTIDAD DE PERMUTACIONES {#cantidad-de-permutaciones}

Para una matriz permutación de orden _n_, existen \\(n!\\) permutaciones.
Por ejemplo, si _P_ tiene 3 filas, se pueden hacer:

\begin{center}
\begin{equation\*}
3! = 3 \times 2 \times 1 = 6\\; permutaciones
\end{equation\*}
\end{center}

{{< figure src="/ox-hugo/permutaciones_de_matriz_orden_3.png" >}}


## PROPIEDAD DE MATRIZ PERMUTACIÓN INVERSA Y TRANSPUESTA {#propiedad-de-matriz-permutación-inversa-y-transpuesta}

La [matriz inversa]({{<relref "20210831224318-matriz_inversa.md#" >}}) y la [transpuesta]({{<relref "20210928201705-matriz_transpuesta.md#" >}}) de una matriz permutación **son iguales**.

\begin{equation\*}
P^{-1} = P^T \therefore \\; PP^T = I
\end{equation\*}
