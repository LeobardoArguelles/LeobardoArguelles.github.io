+++
title = "Método de substitución hacia atrás"
author = ["Leobardo Argüelles"]
draft = false
+++

Este método se usa para solucionar un [sistema de ecuaciones lineales, con matrices]({{<relref "20210831222734-sistema_de_ecuaciones_lineales_con_matrices.md#" >}}).

Para poder aplicarlo, es necesario obtener una [matriz triangular superior]({{<relref "20210902165246-matrices_triangulares.md#" >}}), la cual
puede determinarse aplicando el [metodo de eliminacion]({{<relref "20210902165958-metodo_de_eliminacion.md#" >}}).

Se llama _sustitución hacia atrás_ porque se inicia resolviendo la igualdad con
una sola incógnita y, con ese valor, se empieza a **resolver hacia atrás** resto
de las ecuaciones, pues cada una utiliza el valor recién calculado en la anterior.

Ejemplo:
Se tiene el sistema \\(Ux = b\\), donde:

\begin{equation\*}
U =
\begin{bmatrix}
2\ 3\ 1\\\\
0\ 1\ 3\\\\
0\ 0\ 8\\\\
\end{bmatrix}
\\\\
x=
\begin{bmatrix}
x\\\ y\\\ z
\end{bmatrix}
\\\\
b =
\begin{bmatrix}
8\\\ 4\\\ 8
\end{bmatrix}
\end{equation\*}

Entonces, \\(Ux=b\\) genera las ecuaciones:

\begin{align}
2x +3y + z = 8\\\\
y + 3z + = 4\\\\
8z = 8
\end{align}

Resolviendo hacia atrás, se resuelve \\((3) \rightarrow (2) \rightarrow (1)\\):

-   (3):

    \begin{align\*}
    8z = 8\\\\
    z = \frac{8}{8} \\\\
    z=1
    \end{align\*}
-   (2):

    \begin{align\*}
    y + 3z = 4\\\\
    y + 3(1) = 4\\\\
    y + 3 = 4\\\\
    y = 4-3\\\\
    y = 1
    \end{align\*}
-   (1):

\begin{align\*}
2x +3y +z = 8\\\\
2x +3(1) + (1) = 8\\\\
2x +3 +1 = 8\\\\
2x +4 = 8\\\\
2x = 8-4\\\\
x = \frac{4}{2}\\\\
x = 2
\end{align\*}
