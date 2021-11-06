+++
title = "Dependencia e Independencia lineal"
author = ["Leobardo Argüelles"]
draft = false
+++

Nota: Para más información sobre [independencia]({{<relref "20211015130919-independencia_algebra_lineal.md#" >}}), [bases]({{<relref "20211015130711-bases_algebra_lineal.md#" >}}), y [dimensión]({{<relref "20211015130746-dimension_algebra_lineal.md#" >}}), ver la
nota individual de cada tema.

Cuando un [vector]({{<relref "20210827181941-vectores.md#" >}}) es una [combinación lineal]({{<relref "20210827183539-combinacion_lineal.md#" >}}) de algun otro (o 2, o más) vector(es),
se le llama **linealmente dependiente**.

Por otro lado, si no hay una combinación lineal que genere al vector,
es **linealmente independiente**.


## INDEPENDENCIA LINEAL Y EL ESPACIO NULO {#independencia-lineal-y-el-espacio-nulo}

Para un sistema \\(Ax=0\\), las columnas de la matriz A serán linealmente
independientes **si y solo si** el [espacio nulo]({{<relref "20211003115744-espacio_nulo.md#" >}}) contiene únicamente al
vector Z.

Visto de otra forma (como una secuencia de vectores), los vectores son
linealmente independientes si la única forma de generar el vector 0 es
haciendo una [combinación lineal]({{<relref "20210827183539-combinacion_lineal.md#" >}}) donde todos los escalares son 0.
E.g: Para una serie de vectores \\(v\_1,\\, v\_2,\\, v\_3\\), la única forma de que
nos de 0, es con: \\(0v\_1,\\, 0v\_2,\\, 0v\_3\\)


## DEPENDENCIA LINEAL {#dependencia-lineal}

-   Cualquier conjunto de vectores de una matriz A será linealmente dependiente si hay más columnas que filas.
-   Las columnas de una matriz son dependientes si hay cualquier vector distinto al vector 0 en el espacio nulo.


## EJEMPLOS {#ejemplos}


### EJEMPLO LINEALMENTE DEPENDIENTE {#ejemplo-linealmente-dependiente}

\begin{equation\*}
u = \begin{bmatrix} 1\\\ 2\end{bmatrix}, \\; v = \begin{bmatrix} 3\\\ 4\end{bmatrix}, \\; w = \begin{bmatrix} 11\\\ 16\end{bmatrix}
\end{equation\*}

El vector w es linealmente dependiente, porque se puede obtener con la combinación
lineal:
\\(2u + 3v = w\\)


### EJEMPLO LINEALMENTE INDEPENDIENTE {#ejemplo-linealmente-independiente}

\begin{equation\*}
u = \begin{bmatrix} 1\\\ -1\\\ 0\end{bmatrix}, \\; v = \begin{bmatrix} 0\\\ 1\\\ -1\end{bmatrix}, \\; w = \begin{bmatrix} 0\\\ 0\\\ 1\end{bmatrix}
\end{equation\*}

Son independientes porque no hay combinación lineal de u y v que genere w.
