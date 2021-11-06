+++
title = "Convertir matriz rectangular en matriz cuadrada y simétrica"
author = ["Leobardo Argüelles"]
draft = false
+++

Si A es una matriz rectangular de (nxm), \\(A^{T}A\\) va ser una matriz
cuadrada, pues quedará un producto (mxn)(nxm), con un resultado
de dimensiones (mxm).

Además, los productos \\(A^{T}A\\) y \\(AA^{T}\\) genera una matriz simetrica.
Por si fuera poco, **la diagonal siempre sera positiva** (porque los elementos
que conforman la diagonal son las lineas multiplicadas por sí mismas, pues
linea _i_ de A es la columna _i_ de A transpuesta).

Por ejemplo:

\begin{equation\*}
A =
\begin{bmatrix}
1\ 2\ 3\\\\
4\ 5\ 6\\\\
\end{bmatrix}
\\; \\; y \\; \\;
A^T =
\begin{bmatrix}
1\ 4\\\\
2\ 5\\\\
3\ 6\\\\
\end{bmatrix}
\end{equation\*}

Entonces:

\begin{equation\*}
AA^T =
\begin{bmatrix}
14\ 32\\\\
32\ 77\\\\
\end{bmatrix}
\end{equation\*}
