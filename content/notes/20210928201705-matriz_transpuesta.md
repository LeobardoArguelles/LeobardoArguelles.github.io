+++
title = "Matriz Transpuesta"
author = ["Leobardo Argüelles"]
draft = false
+++

La transpuesta de una matriz _A_, es una matriz \\(A^T\\) cuyas columnas
corresponden a las líneas de A, y sus filas a las columnas de A.
Es decir: **Las filas y columnas están intercambiadas**.

Ejemplo:

\begin{equation\*}
A=
\begin{bmatrix}
1\ 2\ 3\\\\
4\ 5\ 6\\\\
\end{bmatrix}
\\; \\; \\;
A^{T} =
\begin{bmatrix}
1\ 4\\\\
2\ 5\\\\
3\ 6\\\\
\end{bmatrix}

\end{equation\*}


## OPERACIONES CON LA TRANSPUESTA {#operaciones-con-la-transpuesta}


### SUMA {#suma}

\begin{equation\*}
\left( A + B \right)^{T} = A^{T} + B^{T}
\end{equation\*}


### PRODUCTO {#producto}

Se invierte el orden del producto, similar a un producto de [matrices inversas]({{<relref "20210831224318-matriz_inversa.md#" >}}).

\begin{equation\*}
\left( ABC \right)^{T} = C^{T} B^{T} A^{T}
\end{equation\*}


### INVERSA {#inversa}

\begin{equation\*}
\left( A^{-1} \right)^{T} = \left( A^{T} \right)^{-1}
\end{equation\*}


### PRODUCTO PUNTO {#producto-punto}

Para 2 vectores de dimensiones (nx1), se puede aplicar el producto punto
usando la transpuesta en la parte interna.
Ver [Producto punto usando la transpuesta]({{< relref "20210827184353-producto_punto" >}}).


### CONVERTIR MATRIZ RECTANGULAR EN CUADRADA (Y SIMÉTRICA) {#convertir-matriz-rectangular-en-cuadrada--y-simétrica}

[Convertir matriz rectangular en matriz cuadrada y simétrica]({{<relref "20210928204916-convertir_matriz_rectangular_en_matriz_cuadrada_y_simetrica.md#" >}})


## CASOS ESPECIALES {#casos-especiales}


### L Y U, EN MATRICES SIMÉTRICAS {#l-y-u-en-matrices-simétricas}

Partiendo de una **matriz simétrica** _S_:
Al obtener la [matriz triangular]({{<relref "20210902165246-matrices_triangulares.md#" >}}) _U_, a través del proceso de [eliminación]({{<relref "20210902165958-metodo_de_eliminacion.md#" >}}),
y **después de extraer la diagonal para alcanzar A = LDU**
podemos obtener _L_ sabiendo que _L_ es la transpuesta de _U_:

\begin{equation\*}
L = U^T \therefore \\; U = L^T
\end{equation\*}

_NOTA IMPORTANTE: En la factorización A = LU, lo más seguro es que la factorización_
_NO ESTÉ BALANCEADA, entonces no aplica esta propiedad. Por eso es_
_importante sacar primero la diagonal, pues eso le regresa el balance_.

Esto nos permitirá **ahorrar espacio de almacenamiento** en la
[factorización A = LDU]({{<relref "20210922202821-factorizacion_ldu_de_a.md#" >}}), pues se omite almacenar _U_, y se expresa como:

\begin{equation\*}
A = LDL^T
\end{equation\*}


### TRANSPUESTA DE UNA MATRIZ DIAGONAL {#transpuesta-de-una-matriz-diagonal}

La [matriz diagonal]({{<relref "20210907130335-matriz_diagonalizada.md#" >}}) queda **exactamente igual** (es [simétrica]({{<relref "20210918125103-matriz_simetrica.md#" >}}))

\\(D^T = D\\)


## NUMPY {#numpy}

El objeto matriz tiene un atributo que contiene la transpuesta, y se
accede de la siguiente forma:

```python
import numpy as np
A = np.array([[1,2,3],[4,5,6]])
# Esta de abajo sera la transpuesta
return A.T
```
