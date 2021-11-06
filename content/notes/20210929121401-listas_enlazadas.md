+++
title = "Listas enlazadas"
author = ["Leobardo Argüelles"]
draft = false
+++

Una lista enlazada es una [estructura de datos lineal]({{<relref "20210825105939-estructuras_dinamicas_lineales.md#" >}}), donde el orden de los
elementos se determina utilizando punteros.


## PROS Y CONTRAS {#pros-y-contras}

Usar punteros trae varias ventajas sobre los [arreglos estáticos]({{<relref "20210825105600-arrays.md#" >}}), entre ellas:

-   Modificar su tamaño durante la ejecución del programa.
-   Tienen tamaño "infinito".
    Siempre y cuando no se agote la memoria de la máquina.
-   No desperdician espacio, pues solo se asigna memoria cuando se necesita agregar un elemento.

La desventaja es que se requiere memoria extra por nodo, para almacenar
tanto el dato como el puntero.


## OPERACIONES {#operaciones}

-   Búsqueda de un elemento
-   Inserción de nuevos elementos
-   Eliminar elementos de la lista
-   Identificar el elemento mínimo
-   Identificar el elemento máximo
-   Identificar el sucesor o el predecesor de cierto elemento (esto solo aplica en listas ordenadas)

La lista anterior contiene las operaciones más comúnes, pero no es
exhaustiva.


## DIFERENTES TIPOS DE LISTAS ENLAZADAS {#diferentes-tipos-de-listas-enlazadas}

-   [Lista enlazada simple]({{<relref "20210929122632-lista_enlazada_simple.md#" >}})
-   [Lista enlazada doble]({{<relref "20210929124014-lista_enlazada_doble.md#" >}})
-   [Lista enlazada circular]({{<relref "20211001110532-lista_enlazada_circular.md#" >}})
