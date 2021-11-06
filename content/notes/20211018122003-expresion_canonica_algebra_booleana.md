+++
title = "Expresión canónica (Álgebra booleana)"
author = ["Leobardo Argüelles"]
draft = false
+++

Es la expresión booleana que solo tiene [minitérminos o maxitérminos]({{<relref "20211018121043-miniterminos_y_maxiterminos.md#" >}}).


## SUM-OF-PRODUCTS (SOP) CANÓNICA/ESTÁNDAR {#sum-of-products--sop--canónica-estándar}

Consiste de puros minitérminos.
Literal se suman los productos.

Es una [suma de productos]({{<relref "20211018123453-suma_de_productos_algebra_booleana.md#" >}}) **estándar** cuando todas las variables en el [dominio]({{<relref "20211018122942-dominio_algebrab_lineal.md#" >}})
aparecen en cada producto.

Ejemplo:

-   Dominio: A, B, C, D.

-   SOP Estándar: \\(AB'CD+A'B'CD'+ABC'D'\\)


### CONVERSIÓN DE ECUACIÓN GENERAL A SOP CANÓNICA {#conversión-de-ecuación-general-a-sop-canónica}

Se parte de una ecuación **no estándar**, donde a algún término (o a todos)
les haga falta alguna variable del dominio.

Lo que se hace es complementar los términos, multiplicandolo por toda la
[ley del complemento de la or]({{<relref "20210928194757-complemento_ley_de_algebra_booleana.md#" >}}), de la variable que le falta.

Ejemplo:
Ecuación general: \\(AB'C+A'B+ABC'D\\)
Dominio: A,B,C,D

Paso 1: \\(AB'C(D+D')+A'B(C+C')+ABC'D\\)
Paso 2: \\(AB'CD + AB'CD' + A'BC + A'BC' + ABC'D\\)
Paso 3: \\(AB'CD + AB'CD' + A'BC(D+D') + A'BC'(D+D') + ABC'D\\)
Resultado: \\(AB'CD + AB'CD' + A'BCD +A'BCD' + A'BC'D+A'BC'D' + ABC'D\\)
