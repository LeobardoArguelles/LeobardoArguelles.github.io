+++
title = "Paquete simbólico en matlab"
author = ["Leobardo Argüelles"]
draft = false
+++

Permite hacer derivadas/integrales indefinidas (sin números,
solo da el resultado como si lo hicieras a mano).


## USO {#uso}

Ya viene incluido (creo, al menos ahorita que lo probé, ya venía).

Hay que declarar la variable simbólica usando:
`syms x` <--- Donde "x" es la variable, puede ser cualquiera.

Una vez declarada, ya podemos usar las funciones simbólicas.


## OPERACIONES INCLUIDAS {#operaciones-incluidas}

-   Integrar: `int(<expresión>)`
-   Derivar: `diff(<expresión>)`
