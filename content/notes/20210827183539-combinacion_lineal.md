+++
title = "Combinacion lineal"
author = ["Leobardo Argüelles"]
draft = false
+++

Es la combinación de dos operaciones fundamentales:
La [suma]({{<relref "20210827182425-suma_de_vectores.md#" >}}) y el [producto escalar]({{<relref "20210827182716-producto_de_vector_con_escalar.md#" >}}) de [vectores]({{<relref "20210827181941-vectores.md#" >}}).

Si se tienen 2 vectores \\(u\\) y \\(v\\), y 2 escalares \\(c\\) y \\(d\\),
una combinación lineal sería:

\begin{equation\*}
cu + dv =
\begin{bmatrix}
cu\_1\ +\ dv\_1\\\\
cu\_2\ +\ dv\_2\\\\
\end{bmatrix}
\end{equation\*}


## CASOS ESPECIALES {#casos-especiales}


### SUMA {#suma}

Una suma se puede entender como una combinación linear donde todos los
escalares son iguales a 1:
\\(1v + 1w\\)


### RESTA {#resta}

Una resta es una combinación lineal donde uno de los escalares tiene
valor de -1.
\\(1v - 1w\\)


### VECTOR CERO {#vector-cero}

Ambos escalares son 0.
\\(0v + 0w\\)

Cabe mencionar que el vector 0 **siempre** es una combinación posible,
porque los coeficientes pueden ser 0.
Esto es parque del trabajo y la magia del álgebra lineal.


### VECTOR CV DIRIGIDO HACIA V {#vector-cv-dirigido-hacia-v}

Uno de los dos vectores se anula, porque su escalar es igual a 0.
\\(cv + 0w\\)
