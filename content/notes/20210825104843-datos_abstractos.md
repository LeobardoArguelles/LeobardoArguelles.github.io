+++
title = "Datos abstractos"
author = ["Leobardo Argüelles"]
draft = false
+++

Son un tipo de [Dato primitivo]({{<relref "20210825103623-datos_simples_primitivos.md#" >}}), pues no tienen estructura (a diferencia de
los [datos compuestos]({{<relref "20210825105148-datos_compuestos.md#" >}})).

Esto datos, a diferencia de los [datos simples]({{<relref "20210825103204-datos_simples.md#" >}}), son definidos por el programador.

Se definen formalmente como:

> El conjunto de valores que puede tomar este tipo de dato, así
> como las operaciones que los manipulan.
> Ejemplos son las clases usadas en los lenguajes orientados a objetos.

Por ejemplo, 'Game' es un tipo de dato abstracto, con un método 'startGame'.

```text
abstract class Game {
    abstract void startGame();
}
```
