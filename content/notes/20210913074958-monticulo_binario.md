+++
title = "Monticulo Binario"
author = ["Leobardo Argüelles"]
description = "A Max-heap"
draft = false
+++

Es un tipo de [Monticulo]({{<relref "20210913075136-monticulo.md#" >}}) que cumple con la propiedad de que todos los nodos
son mayores (o menores) que cualquiera de sus hijos.

Es binario porque sigue la estructura de un árbol binario, donde cada nodo
tiene como máximo 2 hijos.


## PROPIEDADES {#propiedades}

-   El árbol binario es completo
    Esto significa que todos los niveles están llenos, excepto las hojas
    del árbol, las cuales son colocadas cargadas hacia la izquierda.
-   Max-heap property (or min-heap property)
    El valor de cada nodo es mayor o igual (o menor igual) que el de
    cualquiera de sus hijos.


## CARACTERÍSTICAS {#características}

Al cumplir las propiedades mencionadas, se obtienen estas características.

-   La profundidad del árbol será de \\(\lvert \log n \rvert\\)
    Donde _n_ el ca cantidad de elementos en el monticulo.
-   No hay un orden específico entre los hermanos del mismo nivel.


## REPRESENTACIÓN {#representación}

{{< figure src="/ox-hugo/heap2.png" >}}
