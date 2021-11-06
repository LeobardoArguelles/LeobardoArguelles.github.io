+++
title = "Espacio columna de A"
author = ["Leobardo Argüelles"]
draft = false
+++

Cuando una matriz _A_ no tiene [matriz inversa]({{<relref "20210831224318-matriz_inversa.md#" >}}), significa que el sistema
_Ax=b_ tiene solución para algunos vectores _b_, pero no para todos.

Así, el espacio columna de _A_ está conformado por los vectores _b_ que sí
tienen solución. Es decir, que pueden crearse con una combinación lineal de _A_
(_Ax es una combinación lineal_).

La bibliografía describe el espacio columna como:

> El espacio columna consiste de todas las combinaciones lineales de las columnas
> de A. Las combinaciones son todos los posibles vectores Ax, y llenan el espacio
> columna C(A).

Entonces, el sistema _Ax=b_ solo tienes solución si _b_ está en el espacio
columna de _A_ (es decir, puede expresarse como una combinación lineal de _A_).


## DIMENSIÓN {#dimensión}

Tiene dimensión _r_ (es decir, es igual al [rank]({{<relref "20211005132127-rank_de_matriz.md#" >}}))

Se complementa con la [dimensión del espacio nulo izquierdo]({{< relref "20211016200122-espacio_nulo_izquierdo" >}}) que es _m-r_, y
entre los dos completan todo el _m_.


## ESTRATEGIA PARA CREAR C(A) {#estrategia-para-crear-c--a}

Considera los siguientes pasos:

1.  Suponer un conjunto _S_ de vectores en un espacio _V_.
2.  Crear todas las combinaciones lineales de _S_ para producir _SS_ tal que _SS_ es un subconjunto de _V_.


### Ejemplos {#ejemplos}


#### Ejemplo 1 {#ejemplo-1}

V = {Todos los vectores perpendiculares a v=(1,2,1)},
tal que \\(u \cdot v = 0\\).

Por ejemplo: u = (-1, 1, -1).

Entonces para un caso particular:
\\(c \in R \\; c(-1, 1, -1) \therefore \\; cu \subset V\\)

Además, el vector cero (el subespacio \\(Z\\)) es un
subespacio de \\(cu\\)


#### Ejemplo 2 {#ejemplo-2}

V = {Matrices simétricas}

Las matrices diagonals son un subconjunto de las
simétricas, y la identidad es subconjunto de las
diagonales:

\\(D \subset V\\).

Si \\(c \in R \therefore \\; cI \subset D \subset V\\)


## EJEMPLOS {#ejemplos}


### EJEMPLO 1 {#ejemplo-1}

Suponga:

\begin{equation\*}
I=
\begin{bmatrix}
1\ 0\\\ 0\ 1\\\\
\end{bmatrix}
\end{equation\*}

Esto genera el espacio columna:

\begin{equation\*}
C(I)=
\left\\{
\begin{bmatrix}
1\\\ 0\\\\
\end{bmatrix} ,
\begin{bmatrix}
0\\\ 1\\\\
\end{bmatrix}
\right\\}
\end{equation\*}

Esto genera el plano cartesiano \\(R^2\\), porque las
combinaciones lineales del espacio columna generan
cualquier vector en el plano.


### EJEMPLO 2 {#ejemplo-2}

Suponga:

\begin{equation\*}
A =
\begin{bmatrix}
1\ 2\\\ 2\ 4\\\\
\end{bmatrix}
\end{equation\*}

Se ve que esta matriz es linealmente dependiente, así
que al aplicar eliminación, queda:

\begin{equation\*}
U=
\begin{bmatrix}
1\ 2\\\ 0\ 0\\\\
\end{bmatrix}
\end{equation\*}

Esto significa que _A_ es singular, pero **sí tendrá**
**soluciones**. En particular, tiene un número infinito
de soluciones, porque queda la ecuación:
\\(x\_1 + 2x\_2 = c \therefore x\_1 = c - 2x\_2\\)

Como \\(x\_2\\) queda como variable libre, hay infinitas
soluciones


### EJEMPLO 3 {#ejemplo-3}

Suponga:

\begin{equation\*}
B=
\begin{bmatrix}
1\ 2\ 3\\\\
0\ 0\ 4\\\\
\end{bmatrix}
\end{equation\*}

Al aplicar reducción, se llega a:

\begin{equation\*}
B=
\begin{bmatrix}
1\ 2\ 0\\\\
0\ 0\ 1\\\\
\end{bmatrix}
\end{equation\*}

Para armar el espacio columna de B, buscamos **el número**
**mínimo de vectores que pueden formar a todos los demás**.

En este caso, se elige cualquiera de entre las columnas
1 y 2, y forzosamente la columna 3:

\begin{equation\*}
C(B) =
\left\\{
\begin{bmatrix}
1\\\ 0
\end{bmatrix},
\begin{bmatrix}
0\\\ 1
\end{bmatrix}
\right\\}
\end{equation\*}

Lo que genera al plano cartesiano, igual que en el
ejemplo 1.
