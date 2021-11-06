+++
title = "Árbol (Estructura de datos)"
author = ["Leobardo Argüelles"]
draft = false
+++

Se usa principalmente para representar datos con relación jerárquica
entre sus elementos.

Un árbol es un conjunto finito de nodos, tal que:

-   Hay un nodo especial llamado RAIZ (\\(V\_{1}\\)).
-   Les demás nodos se dividen en conjuntos disjuntos y cada uno es, a su vez,
    un árbol. Se les llama suárboles del raíz.


## TERMINOLOGÍA {#terminología}


### TIPOS DE NODOS {#tipos-de-nodos}

Los nodos son los vértices o elementos del árbol.


#### POR SU POSICIÓN {#por-su-posición}

-   Raíz
    Si el árbol no está vacío, tiene un único nodo raíz. Todos los demás
    elementos descienden de él, y el raíz no es hijo de nada.
-   Nodo rama
    Tiene hijos (forma un subárbol)
-   Nodo terminal u hoja (leaf)
    Nodo que no tiene ningún subárbol.


#### POR SU RELACIÓN CON OTROS NODOS {#por-su-relación-con-otros-nodos}

-   Padre

Tiene nodos sucesores (sus hijos)

-   Descendientes

Hijos de un nodo y los hijos de sus hijos

-   Ascendientes

Padres y abuelos de un nodo

-   Hermanos

2 o más nodos con el mismo padre

-   Raíz

Primer nodo del árbol

-   Hoja

Un nodo sin hijos, nodo terminal


### OTRAS CARACTERÍSTICAS {#otras-características}


#### RAMA / ARCO {#rama-arco}

Camino que termina en una hoja.


#### NODOS INTERIORES {#nodos-interiores}

Los nodos con subárboles (no son hojas ni raíz).


#### BOSQUES {#bosques}

Una colección de 2 o más árboles es un bosque.


## PROPIEDADES {#propiedades}


### NIVEL {#nivel}

Un árbol vacío tiene 0 niveles. El árbol raíz es el primer nivel.
De ahí en adelante, cada generación es un nivel adicional.


### ALTURA {#altura}

Número máximo de niveles del árbol.
Se calcula recursivamente tomando el nivel más alto de los 2
subárboles:

\begin{equation\*}
altura= max(altura(hijo\_1),\\; altura(hijo\_2),\\; \dots \\, altura(hijo\_n)) +1
\end{equation\*}


### PESO {#peso}

Es el número de nodos que tiene el árbol.
Esto es importante para conocer el tamaño del árbol,el espacio en memoria
que utiliza, y el tiempo que vamos a tardar en recorrerlo.
Se calcula recursivamente:

\begin{equation\*}
peso=peso(hijo\_1)+peso(hijo\_2)+ \dots peso(hijo\_n)
\end{equation\*}


### ORDEN {#orden}

Es el número máximo de hijos que puede tener un nodo.
Nota: No aplica un árbol de orden 1, porque sería una lista.
El orden **no se calcula**, más bien es un dato elegido al diseñar la
estructura de datos.


### GRADO {#grado}

Es el número mayor de hijos que tiene un árbol, y será <= al orden.
La diferencia es que el orden es un valor definido por el desarrollador,
mientras que el grado es la cantidad máxima en un instante del
árbol.
Ejemplo: Un árbol de orden 3 tendrá, como máximo, 3 hijos. Pero si solo
tienes a la raíz y 2 hojas, el grado será de 2, porque hasta ahí va el
árbol.


## SUBÁRBOLES {#subárboles}

Es todo árbol generado usando solo una sección determinada del árbol.
(Puede ser cualquier nodo, **pero debe tener hijos**)
Entonces podemos definir un árbol como: "Un nodo raíz con _N_ sub-árboles"

{{< figure src="/ox-hugo/subtrees.png" >}}


## ÁRBOLES ESPECIALES {#árboles-especiales}

-   [Árbol binario]({{<relref "20211005165009-arbol_binario.md#" >}})
-   [Árbol m-ario]({{<relref "20211005170410-arbol_m_ario.md#" >}})
