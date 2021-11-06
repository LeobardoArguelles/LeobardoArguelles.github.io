+++
title = "Método de Gauss-Jordan para obtener matriz inversa"
author = ["Leobardo Argüelles"]
draft = false
+++

Para una matriz A, se aumenta con la matriz identidad: [AI]

Ejemplo:

\begin{equation\*}
A=
\begin{bmatrix}
\ \ 2\ \ &\llap{$-$}1\ \ &0\\\\
\ \ \llap{$-$}1\ \ &2\ \ &\llap{$-$}1\\\\
\ \ 0\ \ &\llap{$-$}1\ \ &2
\end{bmatrix}
\end{equation\*}

Matriz aumentada [AI]:

\begin{equation\*}
[AI]=
\begin{bmatrix}
\ \ 2\ \ &\llap{$-$}1\ \ &0\ \ 1\ \ 0\ \ 0\\\\
\ \ \llap{$-$}1\ \ &2\ \ &\llap{$-$}1\ \ 0\ \ 1\ \ 0\\\\
\ \ 0\ \ &\llap{$-$}1\ \ &2\ \ 0\ \ 0\ \ 1\\\\
\end{bmatrix}
\end{equation\*}

Planteado esto, se aplican todas las matrices elementales necesarias
para transformar A en I.
Al final, cuando A se haya convertido en I, la sección que correspondía
a I en la matriz aumentada original corresponderá a la matriz inversa.

\begin{equation\*}
[IA^{-1}] =
\begin{bmatrix}
1\ 0\ 0\ \frac{3}{4}\ \frac{1}{2}\ \frac{1}{4}\\\\
\\\\
0\ 1\ 0\ \frac{1}{2}\ 1\ \frac{1}{2}\\\\
\\\\
0\ 0\ 1\ \frac{1}{4}\ \frac{1}{2}\ \frac{3}{4}\\\\
\end{bmatrix}
\end{equation\*}

\begin{equation\*}
A^{-1} =
\begin{bmatrix}
\frac{3}{4}\ \frac{1}{2}\ \frac{1}{4}\\\\
\\\\
\frac{1}{2}\ 1\ \frac{1}{2}\\\\
\\\\
\frac{1}{4}\ \frac{1}{2}\ \frac{3}{4}\\\\
\end{bmatrix}
\end{equation\*}
