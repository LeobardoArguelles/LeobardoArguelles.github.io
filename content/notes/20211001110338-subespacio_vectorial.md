+++
title = "Subespacio vectorial"
author = ["Leobardo Argüelles"]
draft = false
+++

Son espacios vectoriales más chicos, contenidos dentro de los espacios
vectoriales grandes, que contienen a todos los vectores (como \\(R^2\\) tiene
todos los vectores bidimensionales)

Ejemplo: Un plano es un subespacio de \\(R^3\\), porque cumple todas las reglas
necesarias, pero los vectores ahí contenidos **nunca saldrán del plano**.
Y, aunque pudiera parecer que está entonces en 2 dimensiones, **no pertenece**
**a \\(R^2\\)**, pues los vectores tienen 3 dimensiones (una de ellas es 0).


## REGLAS QUE DEBEN CUMPLIR {#reglas-que-deben-cumplir}

Para ser considerado un subespacio vectorial, el espacio debe contener
ciertos vectores, y satisfacer estas 3 reglas:
(Nota: En realidad hay 8, pero con cumplir estas 3, las demás se cumplen
en automático)

1.  Forzosamente debe incluir el vector 0.

Si _v_ y _w_ son vectores en el subespacio:

1.  \\(v+w\\) debe estar en el subespacio.
    AKA: Cerrado respecto a la suma.
2.  \\(cv\\) debe estar en el subespacio.
    AKA: Cerrado respecto al producto.

Las 3 reglas anteriores son las extensas, pero pueden resumirse en una
sola regla llamada **Regla de los subespacios**:

> Un subespacio que contenga a v y w, debe contener todas las combinaciones
> lineales cv + dw


## SUBESPACIOS ESPECIALES {#subespacios-especiales}

-   [Espacio nulo]({{<relref "20211003115744-espacio_nulo.md#" >}})
