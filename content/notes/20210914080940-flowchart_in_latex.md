+++
title = "Flowchart in LaTeX"
author = ["Leobardo Argüelles"]
draft = false
+++

Para poder crear diagramas de flujo, vamos a necesitar [TikZ]({{<relref "20210914080541-tikz.md#" >}}).


## PACKAGES TO LOAD {#packages-to-load}


## BUILDING THE FLOWCHART {#building-the-flowchart}

El diagrama de flujo debe ser creado en un ambiente `tikzpicture`.
Dentro de este (en la parte de <TikZ code>) se agregan los nodos del
diagrama de flujo.


### ADDING ARROWS {#adding-arrows}


#### ARROW PATH {#arrow-path}

Una flecha puede seguir distintos caminos. Estas son las opciones
disponibles:

-   `--`
    Sigue una línea recta desde A hasta B, así que sirve para hacer
    líneas ortagonales, o si queremos una diagonal.
-   `|-`
    Avanza verticalmente hacia arriba antes de moverse en la
    dirección horizontal.
    Útil para hacer ángulos rectos, o para que los bloquede decisión
    se vean bien.
-   `-|`
    ¿Similar al anterior? La verdad no sé la diferencia.
    En el futuro modificar esta entrada.


#### UNLABELED ARROWS {#unlabeled-arrows}


#### LABELED ARROWS {#labeled-arrows}

Estas son necesarias, por ejemplo, para los bloques de decisión.

Para agregar texto, se tiene que usar un nodo nuevo, pero no
es necesario crearlo en su propia línea, sino que se puede hacer
en la misma instrucción `draw`, tal como se ve en el bloque
de código.

`Anchor` nos permite anclar ese nodo en una de las direcciones
cardinales de la flecha:

-   `anchor=north`
-   `anchor=south`
-   `anchor=east`
-   `anchor=west`


## COMPONENTS {#components}

Para poder crear el diagrama, tenemos que definir los componentes que
vamos estar usando para las figuras, usando `tikzstyle`.

En esta sección está el código básico de los componentes, para ser
modificado si se requiere.


### START/STOP {#start-stop}


### INPUT/OUTPUT {#input-output}


### PROCESS {#process}


### DECISION {#decision}



#### DECISION GAP ADJUSTMENT {#decision-gap-adjustment}

Como este nodo es un rombo, suele ser necesario ajustar el espacio
que queda entre él, y su nodo superior, pues su esquina roba
un poco de espacio.

Esto puede hacerse con `yshift=<heightoffset>`.

Ejemplo:


### ARROWS {#arrows}


### NODES {#nodes}



#### NODE POSITIONING {#node-positioning}

Las opciones de <position> son:

-   below of
-   above of
-   right of
-   left of

Cualquiera de ellas va seguida del nombre del nodo de referencia,
en el formato `key=value`.
Ejemplo:

<!--list-separator-->

-  NODE POSITION OFFSET

    Por estética o acomodo, a veces será necesario mover un poco
    los nodos, ya sea en el eje x, o en el eje y.

    Para esto se usa, respectivamente:

    -   xshift=<offset>
    -   yshift=<offset>

    Los dos son un parámetro opcional de `tikzpicture`.
