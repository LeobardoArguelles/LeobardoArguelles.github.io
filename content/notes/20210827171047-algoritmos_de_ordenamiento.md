+++
title = "Algoritmos de Ordenamiento"
author = ["Leobardo Argüelles"]
draft = false
+++

Estos son necesarios cuando se hará una gran cantidad de búsquedas
en un conjunto de datos, pues los algoritmos de búsqueda son más
eficientes en conjuntos ordenados.

Hay 2 tipos de ordenamiento: Interno y externo.


## Ordenamiento interno (arreglos) {#ordenamiento-interno--arreglos}

Los elementos a ordenar se encuentran en la memoria principal.


#### Métodos directos (n^2) {#métodos-directos--n-2}

Recorren todo el array por completo hasta \\(n^2\\) veces para realizar
el ordenamiento.

-   [Bubble sort]({{<relref "20210827171653-bubble_sort.md#" >}})
-   [Selection sort]({{<relref "20210827172726-selection_sort.md#" >}})
-   [Insertion sort]({{<relref "20210827173456-insertion_sort.md#" >}})


#### Métodos logarítmicos (log n) {#métodos-logarítmicos--log-n}

Esto algoritmos usan técnicas que resultan más eficientes para grandes
colecciones de datos. (Por ejemplo el paradigma de [Divide y venceras]({{<relref "20210825095910-divide_and_conquer.md#" >}})).

-   [Quicksort]({{<relref "20210827173911-quicksort.md#" >}})
-   [Merge sort]({{<relref "20210826103850-ordenamiento_por_mezcla.md#" >}})
