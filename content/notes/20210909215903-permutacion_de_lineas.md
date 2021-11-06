+++
title = "Permutación de lineas"
author = ["Leobardo Argüelles"]
draft = false
+++

Una permutación es intercambiar las líneas de alguna matriz.

Se crea una matriz de permutación intercambiando las líneas i y j de la matriz identidad, y
multiplicandola por la matriz que queremos permutar.
Nota: Esta matriz es útil para colocar las filas en una posición más conveniente para resolverlo
computacionalmente.

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

Entonces, si A es:

\begin{equation\*}
A =
\begin{bmatrix}
1\ 1\ 1\\\\
2\ 2\ 2\\\\
3\ 3\ 3\\\\
\end{bmatrix}
\end{equation\*}

La podemos permutar así:

\begin{equation\*}
P\_{23}A =
\begin{bmatrix}
1\ 1\ 1\\\\
3\ 3\ 3\\\\
2\ 2\ 2\\\\
\end{bmatrix}
\end{equation\*}
