+++
title = "Matrices Triangulares"
author = ["Leobardo Argüelles"]
draft = false
+++

Los valores no tienen que ser 1, pero la característica es que se forma
un triángulo arriba, con elementos con valor distinto de 0.
Todos los demás son iguales a 0.

En matrices triangulares, la diagonal de la matriz está formada por
los **pivotes**.
Además, para que exista la [matriz inversa]({{<relref "20210831224318-matriz_inversa.md#" >}}), debe haber tantos pivotes
como el tamaño de la matriz. De lo contrario, una ecuación es linealmente
dependiente, y no existe la matriz inversa.


## U (UPPER TRIANGULAR) {#u--upper-triangular}

\begin{equation\*}
\begin{bmatrix}
1\ 1\ 1\\\\
0\ 1\ 1\\\\
0\ 0\ 1
\end{bmatrix}
\end{equation\*}


## L (LOWER TRIANGULAR) {#l--lower-triangular}

\begin{equation\*}
\begin{bmatrix}
1\ 0\ 0\\\\
1\ 1\ 0\\\\
1\ 1\ 1
\end{bmatrix}
\end{equation\*}
