+++
title = "Método de Jacobi (Usando matrices)"
author = ["Leobardo Argüelles"]
draft = false
+++

Es la misma idea que el [Método de Jacobi con ecuaciones]({{<relref "20211011144116-metodo_de_jacobi.md#" >}}), pero en vez de
despejar variables y usar las ecuaciones, podemos usar matrices y vectores,
lo que resulta más sencillo de trabajar en la computadora.


## CONDICIONES {#condiciones}

Las mismas que Jacobi normal:

1.  Para poder aplicar este método, la matriz A debe ser [diagonal dominante]({{<relref "20210918125241-matriz_tridiagonal_dominante.md#" >}}).
2.  Para _n_ incógnitas, debemos tener _n_ ecuaciones.


## PROCEDIMIENTO {#procedimiento}

Se inicia a partir de un sistema de ecuaciones como el siguiente:

\begin{equation\*}
\begin{aligned}
a\_{11}x+a\_{12}y+a\_{13}z=b\_1\\\\
a\_{21}x+a\_{22}y+a\_{23}z=b\_2\\\\
a\_{31}x+a\_{32}y+a\_{33}z=b\_3\\\\
\end{aligned}
\end{equation\*}

Se forma un sistema _Ax=b_, donde:

\begin{equation\*}
A=
\begin{bmatrix}
a\_{11}\ a\_{12}\ a\_{13}\\\\
a\_{21}\ a\_{22}\ a\_{23}\\\\
a\_{31}\ a\_{32}\ a\_{33}\\\\
\end{bmatrix}\\; \\;
x=
\begin{bmatrix}
x\\\ y\\\ z\\\\
\end{bmatrix}\\; \\;
b=
\begin{bmatrix}
b\_1\\\ b\_2\\\ b\_3\\\\
\end{bmatrix}
\end{equation\*}

Luego, se factoriza A en 2 matrices: D, y (A-D).
(Esto tiene su justificación matemática, pero para propósitos de esta nota,
es solo el procedimiento, y lo importante es la ecuación final).

\begin{equation\*}
D=
\begin{bmatrix}
a\_{11}\ &0\ &0\\\\
0\ &a\_{22}\ &0\\\\
0\ &0\ &a\_{33}\\\\
\end{bmatrix}
\end{equation\*}

\begin{equation\*}
(A-D)=
\begin{bmatrix}
0\ &a\_{12}\ &a\_{13}\\\\
a\_{21}\ &0\ &a\_{23}\\\\
a\_{31}\ &a\_{32}\ &0\\\\
\end{bmatrix}
\end{equation\*}

Se sustituye _A_ por esta factorización en el sistema _Ax=b_, y se despeja
el vector x (de resultados):

\begin{equation\*}
\begin{aligned}
Ax&=b\\\\
A&=D+(A-D)\\\\
[D+(A-D)]x&=b\\\\
Dx+(A-D)x&=b\\\\
Dx&=b-(A-D)x\\\\
x&=D^{-1}\\, [b-(A-D)x]
\end{aligned}
\end{equation\*}

**Nota: Este es un método iterativo, entonces se interpreta que la x de la**
**izquierda es la x _nueva_, y la de la derecha es la x _vieja_**

Por lo tanto, la ecuación que nos importa es la final, que se re-interpreta
como:

\begin{equation\*}
x\_{i+1}=D^{-1}\\, [b-(A-D)x\_{i}]
\end{equation\*}


### ECUACIÓN FINAL (LA QUE SE USA) {#ecuación-final--la-que-se-usa}

\begin{equation\*}
x\_{i+1}=D^{-1}\\, [b-(A-D)x\_{i}]
\end{equation\*}

Donde:

-   D y su inversa vienen de la diagonal que se le extrae a A.
-   \\(x\_{i+1}\\) es el término a calcular
-   \\(x\_i\\) es el término anterior, usado para calcular el nuevo término es el término a calcular
-   \\(x\_i\\) es el término anterior, usado para calcular el nuevo término.
-   b es el vector de resultados

Esto se resuelve iterativamente, calculando el error de la misma forma
que en el [Método de Jacobi]({{<relref "20211011144116-metodo_de_jacobi.md#" >}}).
