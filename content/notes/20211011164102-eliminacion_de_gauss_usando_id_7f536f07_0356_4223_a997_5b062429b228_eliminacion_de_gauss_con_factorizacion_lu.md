+++
title = "Eliminación de Gauss usando "
author = ["Leobardo Argüelles"]
draft = false
+++

Este método se utiliza para solucionar un sistema _Ax=b_.


## PROCEDIMIENTO {#procedimiento}

1.  Se descompone A en 2 [matrices LU]({{<relref "20210902165246-matrices_triangulares.md#" >}}).
2.  Se despejan 2 ecuaciones:
    1.  Ly=b
        Se obtiene _y_ con sustitución hacia delante.
    2.  Ux=y
        Se obtiene _x_ con sustitución hacia atrás.

{{< figure src="/ox-hugo/gauss_lu.png" >}}

A continuación se muestra el proceso matemático para llegar a las ecuaciones.

\begin{equation\*}
\begin{aligned}
Ax&=b\\\\
A&=LU\\\\
(LU)x&=b\\\\
Ux&=y\\\\
Ly&=b
\end{aligned}
\end{equation\*}

Después del tercer paso, se descomponen las 2 ecuaciones:

\begin{equation\*}
Ly=b
\end{equation\*}

Esta se resuelve usando sustitución hacia delante, porque L es una matriz
triangular inferior.
Por lo tanto, se despeja desde arriba hacia abajo para obtener el resultado
del vector _y_.

\\(Ux=y\\)
Como ya tenemos _y_, ahora podemos obtener _x_ (el resultado), aplicando
sustitución hacia atrás (desde abajo hacia arriba).


## CASO ESPECIAL {#caso-especial}

Cuando A es simétrica, se puede aplicar el [Método de Choleski]({{<relref "20211011164954-metodo_de_choleski.md#" >}}).
