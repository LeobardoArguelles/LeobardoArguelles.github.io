+++
title = "Espacio nulo como función de mapeo"
author = ["Leobardo Argüelles"]
draft = false
+++

Se puede entender a los vectores que forman parte del [espacio nulo]({{<relref "20211003115744-espacio_nulo.md#" >}}) como
una "función de mapeo", con las siguientes características:

-   Los vectores del espacio nulo pertenecen a \\(R^n\\)
-   Al hacer el producto Ax = 0, el vector 0 generado pertenece a \\(R^m\\)

Para visualizar lo anterior, sirve este ejemplo:

\begin{equation\*}
\begin{bmatrix}
1\ 0\\\ 4\ 3\\\ 2\ 3\\\\
\end{bmatrix}
\begin{bmatrix}
x\_1\\\ x\_2
\end{bmatrix}
=
\begin{bmatrix}
0\\\ 0\\\ 0
\end{bmatrix}
\end{equation\*}

Aquí:

-   m = 3
-   n = 2
-   El vector 0 es de mx1

Esto se puede ver también con la imagen de clase:

{{< figure src="/ox-hugo/como_mapeo.png" >}}
