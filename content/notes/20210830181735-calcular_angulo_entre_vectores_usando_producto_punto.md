+++
title = "Calcular angulo entre vectores usando producto punto"
author = ["Leobardo Argüelles"]
draft = false
+++

Es posible calcular el angulo que hay entre 2 vectores sin necesidad de recurrir a
trigonometría, simplemente sabiendo calcular el [producto punto]({{<relref "20210827184353-producto_punto.md#" >}}), y sabiendo como
[normalizar vectores]({{<relref "20210827191223-normalizar_vectores.md#" >}}).

Sabemos (por definición) que cuando trabajamos con vectores **unitarios**, el
producto punto resultante es igual al coseno del angulo que forman.
\\(u \cdot v = \cos \theta\\)

Además, cuando tenemos vectores no unitarios podemos convertirlos en
unitarios al normalizarlos, dividiendo cada componente por la [norma]({{<relref "20210827190056-longitud_de_un_vector.md#" >}}):

\begin{equation\*}
Unit\ vector = \frac{v}{\lVert v \rVert}
\end{equation\*}

Entonces, juntando ambas definiciones, sabremos que:

\begin{equation\*}
\frac{u \cdot v}{\lVert u \rVert \lVert v \rVert} = \cos \theta
\end{equation\*}
