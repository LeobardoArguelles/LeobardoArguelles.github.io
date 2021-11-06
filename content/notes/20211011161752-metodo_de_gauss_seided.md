+++
title = "Método de Gauss-Seidel"
author = ["Leobardo Argüelles"]
draft = false
+++

## CONDICIÓN {#condición}

-   La matriz _A_ debe ser [diagonal dominante]({{<relref "20210918125241-matriz_tridiagonal_dominante.md#" >}}).


## PROCEDIMIENTO {#procedimiento}

Se factoriza A en L, D, y U. Luego se despeja el vector de resultados _x_,
de la misma forma que en [Método de Jacobi (Usando matrices)]({{<relref "20211011155405-metodo_de_jacobi_usando_matrices.md#" >}}).

A continuación se muestra el procedimiento.

\begin{equation\*}
\begin{aligned}
Ax&=b\\\\
A&=L+D+U\\\\
(L+D+U)x&=b\\\\
Lx+Dx+Ux&=b\\\\
(L+D)x&=b-Ux\\\\
x&=(L+D)^{-1}\\, (b-Ux)
\end{aligned}
\end{equation\*}


### ECUACIÓN FINAL (LA QUE SE USA) {#ecuación-final--la-que-se-usa}

\begin{equation\*}
x\_{i+1}&=(L+D)^{-1}\\, (b-Ux\_{i})
\end{equation\*}

Donde:

-   L, D, y U vienen de la factorización de A.
-   \\(x\_{i+1}\\) es el término a calcular
-   \\(x\_i\\) es el término anterior, usado para calcular el nuevo término es el término a calcular
-   \\(x\_i\\) es el término anterior, usado para calcular el nuevo término.
-   b es el vector de resultados

Esta ecuación se usa iterativamente, hasta que converge en el resultado.
