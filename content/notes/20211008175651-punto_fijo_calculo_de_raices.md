+++
title = "Punto fijo (cálculo de raices)"
author = ["Leobardo Argüelles"]
draft = false
+++

## FUNDAMENTO {#fundamento}

Se parte de la definición de un [punto fijo]({{<relref "20211008175730-punto_fijo_definicion.md#" >}}).

Como en un punto fijo \\(f(x)=x\\), el cálculo de raíces usando este método
nos ayuda a buscar un punto _p_ tal que \\(f(p)=0\\).

Lo que se hace entonces es plantear **otra función** _g(x)_, la cual se
define como \\(g(x)=x-f(x)\\).

En este caso, calcular \\(g(p)\\) será igual a \\(p-f(p)\\) que, como sabemos que
\\(f(p)=0\\), entonces queda \\(g(p)=p\\), lo que es un punto fijo.

Entonces, si encontramos _x_ para \\(g(x)=x-f(x)\\), también habremos encontrado
_x_ para \\(f(x)=0\\), que es la raíz buscada.


## ¿QUÉ SE HACE? {#qué-se-hace}

1.  Partiendo de \\(f(x)\\), la función se iguala a 0 y se despeja x.
    Nota: En este caso, con despejar me refiero a pasar una sola _x_ al otro
    lado de la igualdad, no **todas las x**.
    Ejemplo: \\(x^2-x-2\\) pudiera quedar como una de estas 2 opciones:
    -   \\(x = x^2-2\\)

    -   \\(x = \frac{2}{x-1}\\)

2.  Se itera siguiendo la siguiente secuencia:
    \\(g(x\_0)=x\_1\\)
    \\(g(x\_1)=x\_2\\)
    \\(g(x\_2)=x\_3\\)
         \\(\dots\\)
    \\(g(x\_n)=x\_n\\) -> Cuando converge, es nuestra raíz
