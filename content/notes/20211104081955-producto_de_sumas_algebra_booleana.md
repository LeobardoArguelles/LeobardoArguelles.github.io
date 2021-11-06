+++
title = "Producto de sumas (Álgebra booleana)"
author = ["Leobardo Argüelles"]
draft = false
+++

Es una expresión que consiste de puros [maxitérminos]({{<relref "20211018121043-miniterminos_y_maxiterminos.md#" >}}) multiplicándose entre sí.

Esto es, son productos de sumas, donde en cada suma aparece el [dominio]({{<relref "20211018122942-dominio_algebrab_lineal.md#" >}}) completo
de la ecuación.

Por ejemplo, un producto de sumas sería: \\((A+B')(A'+B)\\)


## CONVERTIR A POS ESTÁNDAR {#convertir-a-pos-estándar}

Para obtener la forma canónica, se debe complementar cada suma que le falte
algúna variable, sumando la suma con el [complemento de la and]({{<relref "20210928194757-complemento_ley_de_algebra_booleana.md#" >}}).

Nota: Esto se hace porque el complemento del and \\(AA'\\) genera como resultado
0, por lo que se considera un elemento neutro de la suma.

Por ejemplo:

\begin{equation\*}
(A+B'+C)(A'+B') \implies (A+B'+C)(A'+B'+CC') = (A+B'+C)(A'+B'+C)(A'+B'+C')
\end{equation\*}
