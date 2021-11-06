+++
title = "Regresión Lineal"
author = ["Leobardo Argüelles"]
draft = false
+++

Técnica de modelado estadístico usada para describir una variable de respuesta
continua como una función de una o varias variables predictoras.

{{< figure src="/ox-hugo/regresion_lineal.png" >}}

-   La línea roja es la regresión lineal. Es lineal porque es una linea (duh).
-   La línea busca minimizar la sumatoria de distancias entre la recta y los puntos.
-   La incógnita es la [ecuación de la recta]({{<relref "20211011100922-ecuacion_de_la_recta.md#" >}}).
    \\(y=mx+b\\)


## SISTEMA Ax=b {#sistema-ax-b}

Para poder obtener la ecuación de la recta que hará la aproximación, se plantea
el siguiente [sistema Ax=b]({{<relref "20210909211627-solucionar_sistemas_de_ecuaciones_con_matrices_elementales.md#" >}}):

\begin{equation\*}
\begin{bmatrix}
n\ &\sum x\\\\
\\\\
\sum x\ &\sum x^2\\\\
\end{bmatrix}
\begin{bmatrix}
b\\\ \\\ m\\\\
\end{bmatrix}
=
\begin{bmatrix}
\sum y\\\\
\\\\
\sum xy
\end{bmatrix}
\end{equation\*}

Donde:

-   _n_ es la cantidad de puntos conocidos

-   \\(\sum x\\) es la sumatoria de los componentes _x_ de los _n_ puntos.

-   \\(\sum x^2\\) es la sumatoria de cada componente _x_ elevada al cuadrado de los _n_ puntos.
    Nota: Es la sumatoria de \\(x^2\\), **no se eleva la sumatoria al cuadrado**.

-   \\(\sum y\\) es la sumatoria de cada componente _y_ de los _n_ puntos.

-   \\(\sum xy\\) es la sumatoria del producto de _x_ y _y_ de cada punto.

Este sistema se resuelve ya sea con algún [método numérico]({{<relref "20211011143935-metodos_numericos_para_solucionar_un_sistema_ax_b.md#" >}}), o usando
[matrices elementales]({{<relref "20210909211627-solucionar_sistemas_de_ecuaciones_con_matrices_elementales.md#" >}}), o [Matriz Inversa]({{<relref "20210831224318-matriz_inversa.md#" >}}), o como gustes.


## ERROR ESTÁNDAR DE ESTIMACIÓN {#error-estándar-de-estimación}

\begin{equation\*}
S\_{y,x} = \sqrt{\frac{\sum (y-y\_e)^2}{n-2} }
\end{equation\*}

Donde:

-   _y_ es el valor y de cada uno de los _n_ puntos.
-   \\(y\_e\\) es el valor calculado utilizando regresión
    Es decir, el método de regresión lineal genera una ecuación de recta
    _y = mx + b_, la cual genera al "y estimado"
-   _n_ es el número de puntos.
