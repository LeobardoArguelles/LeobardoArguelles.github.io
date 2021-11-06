+++
title = "Teorema del Valor Medio"
author = ["Leobardo Argüelles"]
draft = false
+++

Este teorema relaciona la [razón de cambio promedio]({{<relref "20210908163802-razon_de_cambio_promedio.md#" >}}) de una función con su
derivada.

El enunciado dice que para cualquier función diferenciable _f_, y cualquier
intervalo [a, b] que pertenezca al dominio de f, exstirá un número _c_
dentro de (a, b) tal que f'(c) sea igual a la razón de cambio promedio
de la función en el intervalo [a, b].

\begin{equation\*}
f'( c) = \frac{f(b)-f(a)}{b-a}
\end{equation\*}


## Condiciones {#condiciones}

-   La función debe ser continuo en el intervalo [a, b].
-   Debe ser derivable dentro del intervalo: (a, b).


## Visto gráficamente {#visto-gráficamente}

{{< figure src="/ox-hugo/teorema_valor_medio.png" >}}


## Ejemplo de aplicación física {#ejemplo-de-aplicación-física}

```text
Si un tren viaja desde Málaga hasta Madrid, a una velocidad promedio de
250 km/h, entonces al menos en un punto su velocidad instantánea debió
haber sido de 250 km/h.
```
