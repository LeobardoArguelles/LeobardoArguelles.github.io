+++
title = "Método de Newton-Raphson (cálculo de raices)"
author = ["Leobardo Argüelles"]
draft = false
+++

Este método parte de un _guess_ \\(x\_0\\), al cual le corresponderá un \\(y\_0\\) en la
gráfica de la función.

Con este punto \\(P\_0\\), se calcula la pendiente, usando 2 definiciones distintas:

1.  La derivada
    La derivada es la pendiente de la recta tangente en un punto.
2.  La pendiente es el delta y sobre el desta x.
    Para calcular el delta, se necesita otro punto. Se usará el punto donde la
    recta tangente cruce el eje X, por lo que se sabrá que \\(y=0\\).

Viendo la fórmula:

\begin{equation\*}
m = \frac{y\_2-y\_1}{x\_2-x\_1}\\; \\; y\\; \\; m=f'(x)
\end{equation\*}

Pero en este caso, \\(y\_2=0\\), por lo que podemos igualar ambas y despejar
\\(x\_1\\), obteniendo la siguiente ecuación:

\begin{equation\*}
x\_1=- \frac{f(x\_0)}{f'(x\_0)} + x\_0
\end{equation\*}

Así, se calcula el siguiente punto \\(x\_1\\), y el proceso se repite hasta
que se converge en la solución.

{{< figure src="/ox-hugo/newton_raphson.png" width="400px" >}}


## FÓRMULA {#fórmula}

De forma general, la fórmula es:

\begin{equation\*}
x\_{n+1} = x\_n - \frac{f(x\_n)}{f'(x\_n)}
\end{equation\*}
