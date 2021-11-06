+++
title = "Estructuras dinamicas lineales"
author = ["Leobardo Argüelles"]
draft = false
+++

## Arreglos a.k.a. Arrays {#arreglos-a-dot-k-dot-a-dot-arrays}

Es un conjunto de elementos de un mismo tipo, ordenados, y que pueden
variar en número.
A esto se le llama _almacenamiento secuencial_.

Operaciones que se pueden hacer con una lista secuencial:

-   Insertar, eliminar, localizan un elemento
-   Determinar su tamaño
-   Recorrer la lista para localizar un elemento particular
-   Ordenar sus elementos de forma ascendiente o descendiente
-   Unir dos o más listas en una sola
-   Dividir una lista en sublistas
-   Copiarla
-   Borrarla

Para insertar o eliminar un elemento en medio de la lista (cualquier
punto excepo el final) es necesario recorrer todos los demás elementos,
pues están organizados secuencialmente.

-   [Pila]({{<relref "20210902113325-stack.md#" >}})
-   [Cola]({{<relref "20210907205415-queue.md#" >}})


## Listas enlazadas {#listas-enlazadas}

Almacena elementos de forma lineal, pero en posiciones de memoria
no adyacentes.

En una lista enlazada, cada elemento tiene la dirección del siguiente.
Por eso, cada elemento debe tener al menos 2 campos: Uno para el valor,
y otro para la dirección del elemento que sigue.

Terminología:

-   Nodo: Cada elemento de la lista
-   Campo: Una subsección del nodo
-   Dato: Campo con el valor que pertenece al nodo
-   Enlace: Campo con la dirección del siguiente nodo.
-   Puntero: Variable cuyo valor es la dirección de otra variable.
