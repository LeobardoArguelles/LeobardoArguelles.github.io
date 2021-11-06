+++
title = "Datos tipo caracter"
author = ["Leobardo Argüelles"]
draft = false
+++

Son un tipo de [Dato simple]({{<relref "20210825103204-datos_simples.md#" >}}) (sin estructura).

Representan letras o conjuntos de letras.


## Carácter (char) {#carácter--char}

El conjunto finito y ordenado de caracteres que la computadora reconoce.
Solo contienen un carácter.
Los caracteres reconocidos no son estándar, pero la mayoría de las computadoras
reconoce los caracteres:

-   Alfabéticos [A-Za-z]
-   Numéricos [0-9]
-   Especiales [+,-,\*,/,.,<,>,...]


## Cadena (String) {#cadena--string}

Sucesión de caracteres delimitados por apóstrofes o comillas dobles.

Como un string son 'varios caracteres juntos', pudiera considerarse como
un [dato compuesto]({{<relref "20210825105148-datos_compuestos.md#" >}}), pues es literalmente un array de chars.
Sin embargo es tan común su uso que también se consideran un dato simple
y [primitivo]({{<relref "20210825103623-datos_simples_primitivos.md#" >}}) (dado por el sistema).
