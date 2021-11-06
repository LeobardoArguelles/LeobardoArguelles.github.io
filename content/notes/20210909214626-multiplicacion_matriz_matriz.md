+++
title = "Multiplicación Matriz-Matriz"
author = ["Leobardo Argüelles"]
draft = false
+++

## LEY FUNDAMENTAL {#ley-fundamental}

\\(AB\ times \ C\ equals\ A\ times\ BC\\)


## REGLAS {#reglas}

Para 2 matrices A y B, en el producto AB=C:

-   El número de columnas de A debe coincidr con el número de filas de B.
    Es decir que para poder multiplicarlas, deben tener la siguiente forma:
    \\(A\_{m\times n} \\; B\_{n\times p}\\) porque n será común. El resultado tendrá las dimensiones
    \\(C\_{m\times p}\\)
-   Cada elemento de C será el resultado del [producto punto]({{<relref "20210827184353-producto_punto.md#" >}}) AB.
    Donde \\(C\_{ij}\\) = (fila i de A) · (columna j de B).
    Se hace de esta forma para que la siguiente regla se cumpla.
-   AB por C será igual a A por BC.
    Ojo, esto es diferente a la propiedad conmutativa donde AB = BA, la cuál
    **no siempre** se cumple en matrices. Si se cumple, es coincidencia.


## GRAFICAMENTE {#graficamente}


## MÉTODOS {#métodos}


### PRODUCTO LINEA I-ÉSIMA COLUMNA J-ÉSIMA {#producto-linea-i-ésima-columna-j-ésima}

{{< figure src="/ox-hugo/multiplicacion_matriz_matriz.png" >}}


### PRODUCTO MATRIZ-COLUMNA-J-ÉSIMA {#producto-matriz-columna-j-ésima}

Para un producto AB, la matriz B se parte en sus vectores columna
\\(B\_1 \dots B\_n\\)

Y se hace la multiplicación de la matriz A por cada vector \\(B\_n\\), lo que
va dar como resultado _n_ vectores, y se concatenan para formar el
resultado del producto.

Ejemplo:

\begin{equation\*}
A =
\begin{bmatrix}
1\ 2\\\\
3\ 4\\\\
\end{bmatrix}
\\; y \\;
B =
\begin{bmatrix}
1\ 2\\\\
1\ 2\\\\
\end{bmatrix}
\end{equation\*}

Entonces:

\begin{equation\*}
B\_1 =
\begin{bmatrix}
1\\\ 1
\end{bmatrix}
\\; y \\;
B\_2 =
\begin{bmatrix}
2\\\ 2
\end{bmatrix}
\end{equation\*}

El resultado será la concatenación: \\([AB\_1 \ AB\_2]\\) donde recuerda que
\\(AB\_n\\) son vectores columna.

Desarrollado:

\begin{equation\*}
AB =
\Bigg[
\begin{bmatrix}
1\ 2\\\\
3\ 4\\\\
\end{bmatrix}
\begin{bmatrix}
1\\\ 1
\end{bmatrix}
\\;
\begin{bmatrix}
1\ 2\\\\
3\ 4\\\\
\end{bmatrix}
\begin{bmatrix}
2\\\ 2
\end{bmatrix}
\Bigg]
=
\begin{bmatrix}
3\ &6\\\\
7\ &14
\end{bmatrix}
\end{equation\*}


#### EN NUMPY {#en-numpy}

```python
c1 = A[:,0].dot(B)[:,np.newaxis]
c2 = A[:,1].dot(B)[:,np.newaxis]
C = np.concatenate((c1, c2), axis=1)
```


### PRODUCTO LÍNEA I-ÉSIMA-MATRIZ {#producto-línea-i-ésima-matriz}

\begin{equation\*}
AB=
\begin{bmatrix}
a\_1\\\ \dots \\\ a\_n
\end{bmatrix}
B =
\begin{bmatrix}
a\_1B\ \dots a\_nB
\end{bmatrix}
\end{equation\*}

Es como el producto columna j-ésima matriz, pero con
los vectores línea de A.

<!--list-separator-->

-  CON NUMPY

    ```python
    l1 = A[0,:].dot(B)[np.newaxis, :]
    l2 = A[1,:].dot(B)[np.newaxis, :]
    C = np.concatenate((l1, l2), axis=0)
    ```


## PRODUCTO DE UNA SECUENCIA DE MATRICES {#producto-de-una-secuencia-de-matrices}

Suponga una secuencia de \\(n\\) matrices cuadradas \\(AA \cdots A\\)
Podemos asociar el producto como \\((A^p)(A^q)\\) talque \\(p+q=n\\) y \\(n \geq 1\\).

Casos especiales para el exponente:

-   \\(A^{-1}\\) es la matriz inversa

-   \\(A^0\\) es una forma de representar la matriz identidad
