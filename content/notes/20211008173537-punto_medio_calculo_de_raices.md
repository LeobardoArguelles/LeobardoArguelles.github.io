+++
title = "Bisección (cálculo de raices)"
author = ["Leobardo Argüelles"]
draft = false
+++

Como una raíz es el punto donde _y=0_, entonces este método toma un
intervalo definido por dos puntos _a_ y _b_, donde:

-   f(a) sea negativo
-   f(b) sea positivo

(Estos pueden ser al revés, la idea es que la función cruce el eje x
en el intervalo)

Partiendo de ahí, se determina un punto _c_ a la mitad del intervalo.
Si _f(c)_ es positivo, el nuevo intervalo va desde _a_ hasta _c_.
Si es negativo, va desde _c_ hasta _b_.

Esto se repite hasta que se converge en la solución.

{{< figure src="/ox-hugo/metodo_biseccion.png" >}}


## PSEUDOCÓDIGO {#pseudocódigo}

```text
Bisect(a, b, n)

f = <f(x)>
for i=0 -> n:
    error = abs(b-a)
    mid = (a+b)/2
    fa = f(a)
    fm = f(mid)
    if error == 0:
        return [mid, error]
    else if fa*fm < 0:
        # fa*fm < 0 significa que m fue positivo
        b = m
    else:
        a = m
return [mid, error]
```
