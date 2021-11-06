+++
title = "Factorizacion LDU de A"
author = ["Leobardo Argüelles"]
draft = false
+++

Esta factorización parte de [A = LU]({{<relref "20210922195503-a_lu.md#" >}}), y le agrega un paso extra para
"balancear" las matrices L y U.

Lo que se hace es dividir U entre una [matriz diagonal]({{<relref "20210907130335-matriz_diagonalizada.md#" >}}) D que contenga
los pivotes.
Esto ocasiona que la diagonal de U tenga puros unos, al igual que la
diagonal de L.

Ejemplo:
Si una matriz A, genera el siguiente LU:

\begin{equation\*}
LU =
\begin{bmatrix}
1\ 0\\\\
3\ 1\\\\
\end{bmatrix}
\begin{bmatrix}
2\ 8\\\\
0\ 5\\\\
\end{bmatrix}
\end{equation\*}

Entonces, LU puede dividirse aún más en LDU:

\begin{equation\*}
LDU=
\begin{bmatrix}
1\ 0\\\\
3\ 1\\\\
\end{bmatrix}
\begin{bmatrix}
2\ 0\\\\
0\ 5\\\\
\end{bmatrix}
\begin{bmatrix}
1\ 4\\\\
0\ 1\\\\
\end{bmatrix}
\end{equation\*}


## EXTRAER D DE U {#extraer-d-de-u}

Ejemplo:

\begin{equation\*}
U=
\begin{bmatrix}
d\_{11}\ u\_{12}\ u\_{13}\\\\
u\_{21}\ d\_{22}\ u\_{23}\\\\
u\_{31}\ u\_{32}\ d\_{33}\\\\
\end{bmatrix}
\end{equation\*}

Esto se separa **extrayendo la diagonal (D)**, y la fila de cada
elemento de la diagonal se multiplica por el recíproco de dicho
elemento:

\begin{equation\*}
DU=
\begin{bmatrix}
d\_{11}\ 0\ 0\\\\
0\ d\_{22}\ 0\\\\
0\ 0\ d\_{33}\\\\
\end{bmatrix}
\begin{bmatrix}
1\ \frac{u\_{12}}{d\_{11}}\ \frac{u\_{13}}{d\_{11}}\\\\
\\\\
\frac{u\_{21}}{d\_{22}}\ 1\ \frac{u\_{23}}{d\_{22}}\\\\
\\\\
\frac{u\_{31}}{d\_{33}}\ \frac{u\_{32}}{d\_{33}}\ 1\\\\
\end{bmatrix}
\end{equation\*}


## FACTORIZACIÓN DE MATRICES SIMÉTRICAS {#factorización-de-matrices-simétricas}

Si \\(S=S^{T}\\) (es [simetrica]({{<relref "20210918125103-matriz_simetrica.md#" >}})), y tenemos su factorizacion \\(LDU\\), sin
intercambiar lineas, entonces se sabe que \\(U=L^{T}\\) (por la definición dada
en la [matriz transpuesta]({{<relref "20210928201705-matriz_transpuesta.md#" >}}))

E.g.

\begin{equation\*}
S=S^{T}=
\begin{bmatrix}
1\ 2\\\ 2\ 7\\\\
\end{bmatrix}
\end{equation\*}

Entonces, la factorización \\(A=LDU\\) puede expresarse, **ahorrando espacio**,
como \\(A=LDL^{T}\\).
Se ahorra espacio porque se omite almacenar la matriz U.

Note que:

\begin{equation\*}
\left( LDL^{T} \right)^{T} = (L^{T})^T D^T L^T = LDL^T
\end{equation\*}
