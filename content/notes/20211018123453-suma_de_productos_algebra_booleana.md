+++
title = "Suma de productos (Álgebra booleana)"
author = ["Leobardo Argüelles"]
draft = false
+++

Es una ecuación formada por la suma de puros productos.

Por ejemplo, una suma de productos sería: \\(AB+CD\\)


## CONVERTIR PRODUCTOS NORMALES A SOP {#convertir-productos-normales-a-sop}

La condición es simplemente que los productos se estén sumando, entonces
podemos pasar de esto:

\begin{equation\*}
A(B+CD)
\end{equation\*}

A esto (lo que ya es una suma de productos):

\begin{equation\*}
AB + ACD
\end{equation\*}


## SUMA DE PRODUCTOS CANÓNICA {#suma-de-productos-canónica}

Es una suma de productos, donde cada producto es un [minitérmino]({{<relref "20211018121043-miniterminos_y_maxiterminos.md#" >}}).
Es decir, en cada producto deben aparecer **todas** las variables de la ecuación.

Para formar un SOP canónica, hay que complementar todos los productos
a los que les haga falta una variable, multiplicando el producto por
el [complemento del or]({{<relref "20210928194757-complemento_ley_de_algebra_booleana.md#" >}}) \\((A+A')\\).

Nota: Esto es porque el complemento del or da como resultado 1, por lo tanto
es un elemento neutro en el producto.

Ejemplo:

\begin{equation\*}
AB + A'BC \implies AB(C+C') + A'BC = ABC + ABC' + A'BC
\end{equation\*}
