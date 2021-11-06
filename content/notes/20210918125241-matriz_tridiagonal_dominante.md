+++
title = "Matriz Diagonal Dominante"
author = ["Leobardo Argüelles"]
draft = false
+++

Definición formal:
El valor absoluto del elemento en \\(a\_{ii}\\) es mayor que lo suma total
de los demás elementos de su línea. (Nota: \\(a\_{ii}\\) es un elemento de
la diagonal).

\begin{equation\*}
\lvert a\_{ii} \rvert > \sum\_{j \neq i} \lvert a\_{ij} \rvert
\end{equation\*}


## EJEMPLO DE MATRIZ DIAGONAL DOMINANTE {#ejemplo-de-matriz-diagonal-dominante}

\begin{equation\*}
A =
\begin{bmatrix}
5\ &1\ &2\\\\
0\ &-9\ &3\\\\
1\ &3\ &5\\\\
\end{bmatrix}
\end{equation\*}

Fila por fila:

-   Fila 1.
    -   Elemento en la diagonal: 5
    -   Suma de todos los demás en esa fila: 3
    -   Cumple la condición.
-   Fila 2.
    -   Elemento en la diagonal: -9
    -   Suma de todos los demás en esa fila: 3
    -   Cumple la condición, porque se usa el valor absoluto.
-   Fila 3.
    -   Elemento en la diagonal: 5
    -   Suma de todos los demás en esa fila: 4
    -   Cumple la condición.


## EJEMPLO DE MATRIZ NO DOMINANTE {#ejemplo-de-matriz-no-dominante}

\begin{equation\*}
A =
\begin{bmatrix}
5\ 1\ 2\\\\
1\ 4\ 3\\\\
4\ 3\ 5\\\\
\end{bmatrix}
\end{equation\*}

Fila por fila:

-   Fila 1.
    -   Elemento en la diagonal: 5
    -   Suma de todos los demás en esa fila: 3
    -   Cumple la condición.
-   Fila 2.
    -   Elemento en la diagonal: 4
    -   Suma de todos los demás en esa fila: 4
    -   **No** cumple la condición.
        El elemento en la diagonal **debe ser mayor**.
        No vale si es igual.
-   Fila 3.
    -   Elemento en la diagonal: 5
    -   Suma de todos los demás en esa fila: 7
    -   **No** cumple la condición.

Una fila cumple la condición, pero 2 de ellas no, entonces esta
matriz **no es dominante**.
Para que sea dominante, **todas las líneas deben cumplir la condición**.
