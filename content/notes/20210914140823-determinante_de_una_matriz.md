+++
title = "Determinante de una matriz"
author = ["Leobardo Argüelles"]
draft = false
+++

## CÁLCULO ARITMÉTICO DE LA DETERMINANTE DE A {#cálculo-aritmético-de-la-determinante-de-a}

{{< figure src="/ox-hugo/calculo_determinante.png" >}}


## CALCULAR DETERMINANTE DE A, UTILIZANDO U {#calcular-determinante-de-a-utilizando-u}

Si tenemos una [matriz]({{<relref "20210831072010-matrices.md#" >}}) A, y la llevamos a la forma [U]({{<relref "20210902165246-matrices_triangulares.md#" >}}),
entonces la determinante se puede obtener multiplicando todos los
elementos de la diagonal.

Ejemplo:

Aritmeticamente:

\begin{align\*}
A &=
\begin{bmatrix}
2\ 3\\\ 2\ 4\\\\
\end{bmatrix}
\\\\
\lvert A \rvert &= (2\*4)-(3\*2) = 8-6 \\\\
\lvert A \rvert &= 2\\\\
\end{align\*}

Con la matriz U:

\begin{align\*}
A &=
\begin{bmatrix}
2\ 3\\\ 2\ 4\\\\
\end{bmatrix}
\\\\
U &=
\begin{bmatrix}
2\ 3\\\ 0\ 1\\\\
\end{bmatrix}
\\\\
\lvert A \rvert &= 2\*1 = 1
\end{align\*}
