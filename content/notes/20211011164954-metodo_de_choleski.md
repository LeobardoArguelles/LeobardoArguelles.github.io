+++
title = "Método de Choleski"
author = ["Leobardo Argüelles"]
draft = false
+++

## CONDICIÓN {#condición}

A debe ser [simétrica]({{<relref "20210918125103-matriz_simetrica.md#" >}}), por lo que se puede descomponer como:

\begin{equation\*}
A=LL^T
\end{equation\*}


## PROCEDIMIENTO {#procedimiento}

Se aplica exactamente lo mismo que en [Eliminación de Gauss (LU)]({{<relref "20211011164102-eliminacion_de_gauss_usando_id_7f536f07_0356_4223_a997_5b062429b228_eliminacion_de_gauss_con_factorizacion_lu.md#" >}}), pero como
se está trabajando con matrices simétricas, podemos ahorrar espacio.

Normalmente A se factorizaría en LU, pero cuando se trabaja con matrices
simétricas, se sabe que \\(U=L^T\\).

Entonces se obtiene únicamente _L_, y ahorramos el almacenamiento de _U_.

A continuación se muestra el procedimiento algebraico sobre cómo se
despejan las ecuaciones usadas:

\begin{equation\*}
\begin{aligned}
A&=LL^T\\\\
Ax&=b\\\\
L(L^Tx)&=b\\\\
L^Tx=y\\; \\; &, \\; \\; Ly=b
\end{aligned}
\end{equation\*}

Partiendo de aquí, se resuelve para _x_ con sustitución hacia delante y
hacia atrás.
