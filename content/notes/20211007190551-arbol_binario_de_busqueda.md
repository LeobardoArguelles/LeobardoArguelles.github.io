+++
title = "Árbol binario de búsqueda"
author = ["Leobardo Argüelles"]
draft = false
+++

Un árbol binario que sigue las siguientes reglas:

-   Siempre tenemos un nodo raíz.
-   Todos los datos <= a la raíz van del lado izquierdo.
-   Todos los datos > a la raíz van del lado derecho.
-   Todos los subárboles también son árboles binarios de búsqueda


## INSERTAR ELEMENTOS {#insertar-elementos}

Se necesitan 2 métodos:

-   El de insertar
-   Otro para buscar la posición correcta del valor a insertar.
    Este trabaja recursivamente, siguiendo la rama adecuada hasta llegar a un
    espacio vacío. Sigue las reglas del árbol binario de búsqueda: Si el
    valor es <= al nodo, va a la izq. Si es >, va a la derecha.

<!--listend-->

```python
def show_postorder(self, node=None):
        """
    Recorrer el árbol en "postorder": Izq, Derecha, Raíz
    :param node: Nodo actual
    :return: Undefined
    """
    if node is None:
        # Primer corrida. Iniciar en la raíz
        node = self.root

    # Recorrer rama izquierda
    if node.left:
        self.show_postorder(node.left)

    # Recorrer rama derecha
    if node.right:
        self.show_postorder(node.right)

    # Mostrar el nodo actual
    print(node.value, end=' ')

def get_position(self, value):
    """
    Obtener la posición que le corresponde a <value> en el árbol, siguiendo
    las reglas de un árbol binario.
    :param value: Valor a posicionar
    :return: Nodo padre de la posición de <value>, y un string indicando
                si value va a la derecha o a la izquierda
    """
    # Declaración de variables
    aux = self.root
    side = None
    while aux:
        # Recorrer el árbol siguiendo las reglas de un árbol binario
        prev = aux
        if value <= aux.value:
            aux = aux.left
            side = "left"
        else:
            aux = aux.right
            side = "right"
    return (prev, side)
```


## ELIMINAR ELEMENTOS {#eliminar-elementos}

Hay 3 casos:


### ELIMINAR HOJA {#eliminar-hoja}

El más fácil, se elimina el arco desde el padre hasta el nodo a eliminar.


### UN SOLO HIJO {#un-solo-hijo}

El hijo sustituye al padre, easy.


### 2+ DESCENDIENTES {#2-plus-descendientes}

2 formas: Sustituyendo por el nodo máz a la izquierda del subárbol
derecho, o por el nodo máz a la derecha del subárbol izquierdo.

Usando la segunda opción:

1.  Seleccionar el subárbol izq. del nodo a borrar, y tomaremos como sucesor el nodo más a la derecha de ese subárbol (el último nodo de la rama derecha)
2.  El sucesor sustituye a la raíz.
3.  Se ajustan los apuntadores.

Se hace de esta forma porqu los elementos en esa posición siguen
cumpliendo las reglas del árbol: Cuando se coloque la nueva raíz,
todos los elementos a la derecha siguen siendo mayores, y todos a la
izquierda siguen siendo menores.
