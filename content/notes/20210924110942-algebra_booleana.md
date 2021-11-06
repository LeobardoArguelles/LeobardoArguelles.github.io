+++
title = "Algebra Booleana"
author = ["Leobardo Argüelles"]
draft = false
+++

Son las reglas que describen a las operaciones booleanas, tal como la
aritmética, pero con algunas importantes diferencias.

Las funciones booleanas se forman tanto con variables como con operadores
booleanos, y su resultado **siempre** será 0 o 1.


## CARACTERÍSTICAS PRINCIPALES {#características-principales}

-   Las variables solo pueden tener 2 valores: 0 o 1.
-   Las operaciones principales son:
    -   [OR]({{<relref "20210924111618-or.md#" >}})
    -   [AND]({{<relref "20210924112414-and.md#" >}})
    -   [NOT]({{<relref "20210924113322-not.md#" >}})
-   Otras operaciones:
    -   [NAND]({{<relref "20210924142844-nand.md#" >}})
    -   [NOR]({{<relref "20210928191555-nor.md#" >}})
    -   [XOR]({{<relref "20210928192033-xor.md#" >}})
    -   [XNOR]({{<relref "20210928192615-xnor.md#" >}})


## LEYES DEL ÁLGEBRA BOOLEANA {#leyes-del-álgebra-booleana}

Son usadas para simplificar una expresión booleana, y reducir la cantidad
de compuertas/operaciones necesarias para obtener el resultado correcto.

-   [Anulación]({{<relref "20210928193343-anulacion_ley_de_algebra_booleana.md#" >}})
-   [Identidad]({{<relref "20210928193916-identidad_ley_de_algebra_booleana.md#" >}})
-   [Idempotente]({{<relref "20210928194216-idempotente_ley_de_algebra_booleana.md#" >}})
-   [Doble negación]({{<relref "20210928194535-doble_negacion_ley_de_algebra_booleana.md#" >}})
-   [Complemento]({{<relref "20210928194757-complemento_ley_de_algebra_booleana.md#" >}})
-   [Conmutativa]({{<relref "20210928195051-conmutativa_ley_de_algebra_booleana.md#" >}})
-   [Asociativa]({{<relref "20210928201004-asociativa_ley_de_algebra_booleana.md#" >}})
-   [Distributiva]({{<relref "20210928195228-distributiva_ley_de_algebra_booleana.md#" >}})
-   [Teoremas de Morgan]({{<relref "20210928201147-teoremas_de_morgan_ley_de_algebra_booleana.md#" >}})


## TABLAS DE VERDAD {#tablas-de-verdad}

Se usan para resumir los resultados de las funciones booleanas.
Para _n_ entradas, una tabla de verdad tendrá \\(2^n\\) renglones.


## PRECEDENCIA DE OPERACIONES {#precedencia-de-operaciones}

1.  Paréntesis
2.  Negaciones o complementos (NOT)
3.  AND o '\*'
4.  OR o '+'
