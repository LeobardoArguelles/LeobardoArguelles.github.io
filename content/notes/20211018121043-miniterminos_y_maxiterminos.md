+++
title = "Minitérminos y Maxitérminos"
author = ["Leobardo Argüelles"]
draft = false
+++

## MINITÉRMINO {#minitérmino}

Es el producto de todas las variables con, o sin su complemento.
Cada variable aparece únicamente una sola vez, y existe una sola
combinación que haga que el resultado del producto sea 1.

**Todas las demás serán 0**.

Se crean a partir de los valores de las variables:

-   Si el valor es 0, se usa la variable complementada.
-   Si el valor es 1, se usa la variable tal como es.

Nota: ^^^ Esto es solo para **representar el minitérmino**.
Por ejemplo, si:

-   A = 0
-   B = 1
-   C = 0

Entonces, el minitérmino es: \\(A'BC'\\)


### NOTACIÓN CORTA {#notación-corta}

Se puede reemplazar cada variable con su equivalente, y obtener el valor
binario, y luego se pasa a decimal. <--- Ese valor es el que se usa para
la notación corta.

Ejemplo:

-   A = 0
-   B = 1
-   C = 0

El minitérmino es: \\(A'BC'\\)

**Usando los valores reales** queda este número binario: 010, lo que es 2 en
decimal.
Entonces, la notación corta será: \\(m\_2\\) <----- Nos quedamos con este.


## MAXITÉRMINO {#maxitérmino}

Es la suma de todas las variables de una ecuación booleana.
Cada variable aparece **una sola vez**, ya sea en su forma normal, o negada.

Para un maxitérmino, **solo existe una combinación que resulta en 0**.
Todas las demás generan un 1.
