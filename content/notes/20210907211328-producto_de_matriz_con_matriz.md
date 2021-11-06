+++
title = "Producto de matriz con matriz"
author = ["Leobardo Argüelles"]
draft = false
+++

Se hace el producto punto: Filas de la primera matriz, con columnas de la
segunda matriz. La fila i con la columna j dará el elemento i,j del resultado.

Ej:

\begin{equation\*}
\begin{bmatrix}
a\ b\\\ c\ d
\end{bmatrix}
\begin{bmatrix}
e\ f\\\ g\ h
\end{bmatrix}
=
\begin{bmatrix}
&(a, b)\cdot (e, g)^T\ &(a, b)\cdot (f, h)^T\\\\
&(c, d)\cdot (e, g)^T\ &(c, d)\cdot (f, h)^T
\end{bmatrix}
\end{equation\*}
