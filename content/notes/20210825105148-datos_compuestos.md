+++
title = "Datos compuestos"
author = ["Leobardo Argüelles"]
draft = false
+++

Este tipo de dato tiene una estructura, la cual almacena otros
datos (normalmente [datos simples]({{<relref "20210825103204-datos_simples.md#" >}})).

Estas estructuras pueden ser estáticas o dinámicas.


## Estructuras estáticas {#estructuras-estáticas}

El tamaño que se ocupa en memoria se define antes de que el programa
se ejecute, y no se puede modificar.

Algunas son:

-   [Array (vector/matriz)]({{<relref "20210825105600-arrays.md#" >}})
    [0, 1, 2, 10, 15]
    El array reserva espacios secuenciales en la memoria para almacenar
    sus datos.
-   [Archivo (fichero)]({{<relref "20210825105705-archivos_tipo_de_dato.md#" >}})
    Literal son archivos de la computadora. Se almacenan en la memoria
    externa.
-   [Cadena (string)]({{<relref "20210825105751-strings.md#" >}})
    El hijo del array y el [char]({{<relref "20210825104621-datos_tipo_caracter.md#" >}}). Es un array que almacena chars para formar
    palabras y textos.


## Estructuras dinámicas {#estructuras-dinámicas}

No tienen límites en el tamaño de la memoria ocupada (al contrario
de las estructuras estáticas).

Se usa un tipa de dato específico (llamado _puntero_) para construir
estructuras dinámicas.

Este tipo de estructura se subdivide a su vez en:

-   [Lineales]({{<relref "20210825105939-estructuras_dinamicas_lineales.md#" >}})
    -   Arreglos
    -   Listas enlazadas
-   [No lineales]({{<relref "20210825110049-estructuras_dinamicas_no_lineales.md#" >}})
    -   Árboles
    -   Grafos
