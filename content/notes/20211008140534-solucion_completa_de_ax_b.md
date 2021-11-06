+++
title = "Solución completa de Ax=b"
author = ["Leobardo Argüelles"]
draft = false
+++

La solución completa _x_ es: \\(x= x\_p + x\_n\\), donde:

-   \\(x\_p\\) son las [soluciones particulares](#obteniendo-soluciones-particulares).
-   \\(x\_6\\) son las soluciones del [espacio nulo]({{<relref "20211003115744-espacio_nulo.md#" >}}).


## OBTENIENDO SOLUCIONES PARTICULARES {#obteniendo-soluciones-particulares}

Se recomienda obtenerlas partir de la matriz [escalonada reducida]({{<relref "20211008134315-matriz_escalonada.md#" >}}) _R_,
pues así es más fácil encontrar los valores de los pivotes.

Entonces, partiendo de _R_:

1.  Se le asigna valor 0 a todas las variables libres.
2.  Se calculan los valores de los pivotes usando sutitución hacia atrás.


## EJEMPLO DE UNA SOLUCIÓN COMPLETA {#ejemplo-de-una-solución-completa}

A partir del sistema con la matriz A y el vector b siguientes:

\begin{equation\*}
A=
\begin{bmatrix}
1\ 3\ 0\ 2\\\\
0\ 0\ 1\ 4\\\\
1\ 3\ 1\ 6\\\\
\end{bmatrix}
\end{equation\*}

\begin{equation\*}
b=
\begin{bmatrix}
1\\\ 6\\\ 0\\\\
\end{bmatrix}
\end{equation\*}

Se aplica eliminación y se obtiene _R_:

\begin{equation\*}
R=
\begin{bmatrix}
1\ 3\ 0\ 2\\\\
0\ 0\ 1\ 4\\\\
0\ 0\ 0\ 0\\\\
\end{bmatrix}
\end{equation\*}

Con esto sabemos que:

-   Las columnas 1 y 3 son pivotes.
-   Las columnas 2 y 4 son variables libres.
-   El rank es 2
-   Hay \\(n-r=4-2=2\\) soluciones especiales para el espacio nulo.

Ahora sí calculamos la solución completa.


### SOLUCIONES PARTICULARES {#soluciones-particulares}

Primero se le da valor 0 a todas las variables libres (\\(x\_2\\) y \\(x\_4\\)).

Esto nos genera el siguiente sistema \\(Rx\_p=b\\):

\begin{equation\*} \begin{bmatrix}
1\ 3\ 0\ 2\\\\
0\ 0\ 1\ 4\\\\
0\ 0\ 0\ 0\\\\
\end{bmatrix}
\\,
\begin{bmatrix}
x\_1\\\ 0\\\ x\_3\\\ 0\\\\
\end{bmatrix}
=
\begin{bmatrix}
1\\\ 6\\\ 0\\\\
\end{bmatrix}
\end{equation\*}

Lo anterior nos genera 2 ecuaciones, con las cuales obtenemos el valor
de los pivotes:

1.  \\(x\_3=6\\)
2.  \\(x\_1=1\\)

Por lo tanto, la solución particular será:

\begin{equation\*}
x\_p=(1, 0, 6, 0)
\end{equation\*}


### SOLUCIONES ESPACIO NULO {#soluciones-espacio-nulo}

Sabemos que debe haber 2 soluciones especiales.


#### CASO 1 - SELECCIONANDO X2 {#caso-1-seleccionando-x2}

-   \\(x\_2=1\\)
-   \\(x\_4=0\\)

Esto nos genera el sistema:

\begin{equation\*}
\begin{bmatrix}
1\ 3\ 0\ 2\\\\
0\ 0\ 1\ 4\\\\
0\ 0\ 0\ 0\\\\
\end{bmatrix}
\\,
\begin{bmatrix}
x\_1\\\ 1\\\ x\_3\\\ 0\\\\
\end{bmatrix}
=
\begin{bmatrix}
0\\\ 0\\\ 0\\\\
\end{bmatrix}
\end{equation\*}

A partir del cual se calcula (usando sustitución hacia atrás) que:

-   \\(x\_3=0\\)
-   \\(x\_1=-3\\)

Entonces, el primer vector especial:

\\(s\_1=(-3, 1, 0, 0)\\)


#### CASO 2 - SELECCIONANDO X4 {#caso-2-seleccionando-x4}

-   \\(x\_2=0\\)
-   \\(x\_4=1\\)

Esto nos genera el sistema:

\begin{equation\*}
\begin{bmatrix}
1\ 3\ 0\ 2\\\\
0\ 0\ 1\ 4\\\\
0\ 0\ 0\ 0\\\\
\end{bmatrix}
\\,
\begin{bmatrix}
x\_1\\\ 0\\\ x\_3\\\ 1\\\\
\end{bmatrix}
=
\begin{bmatrix}
0\\\ 0\\\ 0\\\\
\end{bmatrix}
\end{equation\*}

A partir del cual se calcula (usando sustitución hacia atrás) que:

-   \\(x\_3=-4\\)
-   \\(x\_1=-2\\)

Entonces, el primer vector especial:

\\(s\_2=(-2, 0, -4, 1)\\)


### SOLUCIÓN COMPLETA {#solución-completa}

Se expresa como: \\(x=x\_p+x\_n\\)

Nota: En \\(x\_n\\) se indica qué variable fue seleccionada para generar el vector
especial. Mira:

\begin{equation\*}
x=
\begin{bmatrix}
1\\\ 0\\\ 6\\\ 0\\\\
\end{bmatrix}
+ x\_2
\begin{bmatrix}
-3\\\ 1\\\ 0\\\ 0\\\\
\end{bmatrix}
+ x\_4
\begin{bmatrix}
-2\\\ 0\\\ -4\\\ 1
\end{bmatrix}
\end{equation\*}
