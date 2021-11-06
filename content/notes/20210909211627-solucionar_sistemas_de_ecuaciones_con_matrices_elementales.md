+++
title = "Solucionar sistemas de ecuaciones con matrices elementales"
author = ["Leobardo Argüelles"]
draft = false
+++

Es posible solucionar un [sistema de ecuaciones]({{<relref "20210831222734-sistema_de_ecuaciones_lineales_con_matrices.md#" >}}) si se plantea de la forma Ax = b.

Para hacerlo, hay que encontrar una matriz \\(E\\) que, al multiplicarse con \\(A\\),
genere la [matriz identidad]({{<relref "20210831224956-matriz_identidad.md#" >}}).
Dicho de otra forma, hay que encontrar la [matriz inversa]({{<relref "20210831224318-matriz_inversa.md#" >}}) de A (\\(A^{-1}\\)).

_Nota: Si una matriz tiene matriz inversa, significa que habrá una solución_
_para cualquier vector b. Sin embargo, que no exista la matriz inversa no_
_significa que no exista ninguna solución. Habrá ciertos vectores b que sí_
_tengan solución. Para más información ver: [Espacio columna de A]({{<relref "20211003105934-espacio_columna_de_a.md#" >}})_

En este caso, \\(E = A^{-1}\\), pero se maneja una nomenclatura distinta porque
**E** también se puede entender como la **serie de productos de matrices elementales**.
Simplemente coincide que, en este caso, generan la matriz inversa.

Una vez que se tiene la matriz inversa (**E**), basta con multiplicarlo por
**b** para obtener el vector de resultados **x**, porque: \\(x = A^{-1}b\\)


## SOLUCIÓN DEL SISTEMA {#solución-del-sistema}

1.  Obtener, una a una, las matrices elementales necesarias para transformar A en D ([Matriz Diagonal]({{<relref "20210907130335-matriz_diagonalizada.md#" >}})).
    Esto es, queremos hacer la siguiente transformación (los números no son reales, solo representativos):

    \begin{equation\*}
     A =
     \begin{bmatrix}
     1\ 1\ 1\\\\
     1\ 1\ 1\\\\
     1\ 1\ 1
     \end{bmatrix}
     \rightarrow
     \begin{bmatrix}
     2\ 0\ 0\\\\
     0\ 5\ 0\\\\
     0\ 0\ 9
     \end{bmatrix}
     = D
     \end{equation\*}
2.  Multiplicar la matriz D por matrices elementales que **neutralicen la diagonal**
    Es decir, que conviertan en 1 cada elemento de la diagonal, AKA, la hagan la matriz Identidad.

    \begin{equation\*}
    D =
     \begin{bmatrix}
     2\ 0\ 0\\\\
     0\ 5\ 0\\\\
     0\ 0\ 9
     \end{bmatrix}
     \begin{bmatrix}
     1\ 0\ 0\\\\
     0\ 1\ 0\\\\
     0\ 0\ 1\\\\
     \end{bmatrix}
     = I
     \end{equation\*}
3.  Para obtener los valores del vector de variables x (y así, la solución al sistema), solo falta multiplicar **en orden** todas las matrices elementales creadas. Esto generará la matriz identidad.
    El orden es primordial en este caso. Debe respetarse el orden en el que se fueron creando las matrices elementales:
    Multiplicar la primera creada con la segunda, ese resultado con la tercera, y así sucesivamente.
    \\(x = A^{-1}b\\)

_Nota: El tercer paso puede omitirse si desde el principio creamos la matriz aumentada [Ab], pues si seguimos este_
_proceso, creando matrices elementales solo para la seccion que corresponde a **A**, entonces al final, cuando lleguemos_
_a la matriz identidad, habremos obtenido la respuesta, pues **b** fue afectado en cada paso_.


## COSTO DEL PROCEDIMIENTO {#costo-del-procedimiento}

-   Para transformar A en [U]({{<relref "20210902165246-matrices_triangulares.md#" >}}), se requieren \\(\frac{n(n-1)}{2}\\) operaciones.

-   Para [diagonalizar]({{<relref "20210907130335-matriz_diagonalizada.md#" >}}) A se requieren (en total) \\(n(n-1)\\).
