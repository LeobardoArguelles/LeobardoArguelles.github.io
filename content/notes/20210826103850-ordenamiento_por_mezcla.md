+++
title = "Ordenamiento por mezcla"
author = ["Leobardo Argüelles"]
draft = false
+++

Este es un algoritmo que utiliza el paradigma [Divide y venceras]({{<relref "20210825095910-divide_and_conquer.md#" >}}).


## PASOS DE ACUERDO A DIVIDE AND CONQUER {#pasos-de-acuerdo-a-divide-and-conquer}

1.  Divide al partir el array a la mitad (len/2).
2.  Vence al ordenar recursivamente los subarreglos de cada mitad.
3.  Combina al mezclar los dos subarreglos ordenados en un solo subarreglo ordenado.


## EFICIENCIA {#eficiencia}

-   Peor caso: \\(\theta (n \log n)\\)
-   Mejor caso: \\(\theta (n \log n)\\)
-   Caso promedio: \\(\theta (n \log n)\\)


## PSEUDOCODIGO {#pseudocodigo}


### MERGESORT(A) {#mergesort--a}

```text
n = length(A);
if n <= 1 then
    return A;
L = MERGESORT(A[1:n/2]);
R = MERGESORT(A[n/2+1:n]);
return MERGE(L, R);
```


### MERGE(L, R) {#merge--l-r}

```text
m = length(L) + length(R);
S = empty array of size m;
i = j = 1;
for k = 1 -> m do:
    if L(i) < R(j) then:
        S(k) = L(i);
        i++;
    else:
        S(K) = R(j);
        j++;
return S;
```
