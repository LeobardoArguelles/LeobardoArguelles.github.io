+++
title = "Espacio nulo izquierdo"
author = ["Leobardo Argüelles"]
draft = false
+++

"Espacio nulo izquierdo" es la forma _fancy_ de llamarle al [espacio nulo]({{<relref "20211003115744-espacio_nulo.md#" >}}) de
la [matriz transpuesta]({{<relref "20210928201705-matriz_transpuesta.md#" >}}).

Es decir, el espacio nulo izquierdo es igual a \\(N(A^T)\\)

Para obtenerlo se resuelve igual que para obtener espacio nulo, pero usando el
sistema: \\(A^Ty=0\\)

Se le llama _espacio nulo izquierdo_, porque el vector _y_ puede escribirse
**a la izquierda de A**, de esta forma: \\(y^TA=0^T\\)


## DIMENSIÓN {#dimensión}

Tiene dimensión _m-r_, donde _r_ es el [rango de la matriz]({{<relref "20211005132127-rank_de_matriz.md#" >}}).

Se complementa con la dimensión del [espacio columna]({{< relref "20211003105934-espacio_columna_de_a" >}}) el cual es _r_, y entre
los dos completan todo el _m_.
