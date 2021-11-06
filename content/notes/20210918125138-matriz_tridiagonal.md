+++
title = "Matriz Tridiagonal"
author = ["Leobardo Argüelles"]
draft = false
+++

Tiene la diagonal central, y otras 2 diagonales adyacentes. Todo lo
demás son ceros.


## NOTAS {#notas}


### EFICIENCIA Y RECURSOS COMPUTACIONALES {#eficiencia-y-recursos-computacionales}

Una [matriz rala]({{<relref "20210918130217-matriz_rala.md#" >}}) es una matriz que tiene más ceros que valores
Entonces, hablando de recursos computacionales, podemos comprimir
esa matriz, para no usar tanto espacio.

La excepción es si vamos a calcular su inversa, pues será [densa]({{<relref "20210918130420-matriz_densa.md#" >}}).


### INVERSA DE UNA MATRIZ TRIDIAGONAL {#inversa-de-una-matriz-tridiagonal}

La inversa tiene la característica de que será densa.


## EJEMPLO {#ejemplo}

\begin{equation\*}
\begin{bmatrix}
1\ 2\ 0\ 0\ 0\ 0\\\\
3\ 1\ 2\ 0\ 0\ 0\\\\
0\ 3\ 1\ 2\ 0\ 0\\\\
0\ 0\ 3\ 1\ 2\ 0\\\\
0\ 0\ 0\ 3\ 1\ 2\\\\
0\ 0\ 0\ 0\ 3\ 1\\\\
\end{bmatrix}
\end{equation\*}

Un caso especial de la matriz tridiagonal, es la
[Matriz Tridiagonal Dominante]({{<relref "20210918125241-matriz_tridiagonal_dominante.md#" >}})
