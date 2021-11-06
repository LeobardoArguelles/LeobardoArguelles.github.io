+++
title = "Matriz Aumentada"
author = ["Leobardo Argüelles"]
draft = false
+++

Se le conoce de esta forma a la matriz que combina a la matriz de coeficientes
y al resultado de un sistema de ecuaciones en una sola matriz.

Es decir, si el sistema se plantea de la forma \\(Ax=b\\), entonces la matriz
aumentada es [Ab].

Para crearla, simplemente se agrega **b** hasta la derecha de **A**.

Ej:
Si A y b son:

\begin{equation\*}
A =
\begin{bmatrix}
1\ &2\\\\
6\ &10\\\\
\end{bmatrix}
\\;
b =
\begin{bmatrix}
7\\\ 42\\\\
\end{bmatrix}
\end{equation\*}

La matriz aumentada será:

\begin{equation\*}
[Ab] =
\begin{bmatrix}
1\ &2\ &7\\\\
6\ &10\ &42
\end{bmatrix}
\end{equation\*}
