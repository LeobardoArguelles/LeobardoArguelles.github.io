+++
title = "Lista enlazada simple"
author = ["Leobardo Argüelles"]
draft = false
+++

Se implementa con 2 tipos de datos abstractos: LinkedList, Node.

Cada elemento de una lista enlazada es de tipo **Node**, y el nodo
tiene 2 atributos:

-   Key: El valor almacenado
-   Next: El nodo que viene después en la secuencia
    Es un puntero.
    El último elemento de la lista no tiene sucesor, así que se le asigna valor
    _null_, o _None_.


## REPRESENTACIÓN GRÁFICA {#representación-gráfica}

{{< figure src="/ox-hugo/simple_linked_list.png" >}}


## IMPLEMENTACIÓN (PYTHON) {#implementación--python}

```python
class Node:
    """
    Clase auxiliar para una lista enlazada. Cada nodo es un elemento de
    la lista, y tiene 2 campos: El valor almacenado, y un apuntador
    al siguiente elemento de la lista
    """
    def __init__(self, value=None, next=None):
        self.value = value
        self.next = next


class LinkedList:
    """
    Estructura de datos dinámica y lineal. Cada elemento de la lista
    es una instancia de la clase "Node", cuyos objetos tienen 2 atributos:
    el valor, y un puntero al siguiente elemento.
    """
    def __init__(self):
        # La cabeza de la lista siempre tiene valor None, la uso nada más como sentinela
        self.head = Node(None, None)
        self.tail = self.head
        self.size = 0

    def append(self, value):
        """
        Agrega un nodo con valor <value> al final de la lista enlazada
        :param value: Valor que se está agregando a la lista
        :return: Undefined
        """
        new = Node(value, None)
        self.tail.next = new
        self.tail = new
        self.size += 1

    def preppend(self, value):
        """
        Agrega un nodo con valor <value> en la primera posicion de la
        lista enlazada.
        :param value: Valor que se agrega a la lista.
        :return: Undefined
        """
        new = Node(value, self.head.next)
        self.head.next = new
        # Si la lista estaba vacia, <new> es la nueva cola.
        if new.next is None:
            self.tail = new
        self.size += 1

    def insert(self, value, index):
        """
        Inserta un nuevo elemento con valor <value>, en la posición <index>

        :param value: Valor a insertar
        :param index: Posición donde insertar el nuevo elemento (Base 0)
        :return: Undefined
        """
        # Validar que el indice sea correcto
        if index < 0 or (index > self.size and self.size != 0):
            raise IndexError
        prev = self.__get(index-1)
        new = Node(value, prev.next)
        # Actualizar la cola, si es necesario
        if prev == self.tail:
            self.tail = new
        prev.next = new
        self.size += 1

    def remove(self, index):
        """
        Elimina el elemento número <index> de la lista enlazada
        (empezando con índice 0)
        :param index: Índice del elemento a eliminar
        :return: Valor del nodo eliminado
        """
        # Validar que el indice sea correcto
        if index < 0 or index >= self.size:
            raise IndexError

        # Hay que identificar el nodo anterior
        # al que se desea eliminar, y modificar su atributo next.
        prev = self.__get(index-1)
        # Guardar el valor del nodo a eliminar
        value = self.get(index)

        # Verificar si se está eliminando la cola de la lista, para
        # actualizar el atributo si es necesario
        if prev.next == self.tail:
            self.tail = prev
        prev.next = prev.next.next
        self.size -= 1
        return value

    def pop(self):
        """
        Elimina el último elemento de la lista enlazada.
        :return: Regresa el valor del node eliminado.
        """
        value = self.get(self.size - 1)
        self.remove(self.size - 1)
        return value

    def get(self, index):
        """
        Regresa el valor del nodo en el índice <index>
        :param index: Indice del nodo a obtener su valor.
        :return: Valor del nodo en <index>
        """
        return self.__get(index).value

    def find(self, value):
        """
        Busca <value> entre los valores de la lista enlazada.
        Regresa el índice del primer nodo con valor <value>.
        :param value: Valor a buscar.
        :return: Indice base 0 del primer nodo que tenga el valor a buscar,
                 -1 si no existe
        """
        index = -1
        node = self.head
        while node.next:
            node = node.next
            index += 1
            if node.value == value:
                return index
        return -1

    def is_empty(self):
        """
        Indica si la lista está o no vacía
        """
        return self.size == 0

    def clear(self):
        """
        Limpia la lista enlazada de todos sus elementos.
        """
        self.head.next = None
        self.tail = self.head
        self.size = 0

    def show(self):
        """
        Muestra una representación de los elementos de la lista.
        """
        if self.head.next:
            node = self.head.next
            while node.next:
                print(node.value, end=' -> ')
                node = node.next
            print(node.value)
        else:
            # La lista está vacía
            print('Lista vacia.')

    # Métodos privados
    def __get(self, index):
        """
        Regresa el Nodo en el indice <index>
        :param index: Indice del nodo a localizar
        :return: Objeto Node localizado en <index>
        """
        # Validar que el indice sea correcto
        if index < -1 or index >= self.size:
            raise IndexError
        if index == -1:
            return self.head
        node = self.head.next
        while index:
            node = node.next
            index -= 1
        return node
```
