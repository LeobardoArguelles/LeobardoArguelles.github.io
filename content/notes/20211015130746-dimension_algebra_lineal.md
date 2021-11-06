+++
title = "Dimensión (Álgebra Lineal)"
author = ["Leobardo Argüelles"]
draft = false
+++

Es la cantidad de [vectores]({{<relref "20210827181941-vectores.md#" >}}) que contienen **todas** las [bases]({{<relref "20211015130711-bases_algebra_lineal.md#" >}}) de un [espacio]({{<relref "20210929195024-espacio_vectorial.md#" >}})
vectorial.

Existen [rank]({{<relref "20211005132127-rank_de_matriz.md#" >}}) vectores en una base, por lo que la dimensión es igual al rank.


## DIMENSIONES DE LOS 4 SUBESPACIOS {#dimensiones-de-los-4-subespacios}

Para ver las dimensiones de los **cuatro subespacios**, ver individualmente:

-   [Espacio linea]({{< relref "20211015190936-espacio_linea_de_a" >}})
-   [Espacio columna]({{< relref "20211003105934-espacio_columna_de_a" >}})
-   [Espacio nulo]({{< relref "20211003115744-espacio_nulo" >}})
-   [Espacio nulo izquierdo]({{<relref "20211016200122-espacio_nulo_izquierdo.md#" >}})

\begin{equation\*}
R=
\begin{bmatrix}
1\ &0\ &0\ &-1\\\\
0\ &2\ &1\ &-2\\\\
0\ &0\ &0\ &0\\\\
\end{bmatrix}
\end{equation\*}

A resaltar es que:

-   El espacio linea y el espacio columna tienen ambos dimensión _r_.
    Donde _r_ es el [rank]({{<relref "20211005132127-rank_de_matriz.md#" >}}).
-   El espacio nulo izquierdo complementa al espacio columna, y sus dimensiones suman _n_
-   El espacio nulo complementa al espacio linea, y sus dimensiones suman _m_
    -   Esto implica que toda _x_ puede dividirse en sus componentes en el espacio línea, y su compontete del espacio nulo
