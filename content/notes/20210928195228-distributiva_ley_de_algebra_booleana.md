+++
title = "Distributiva (Ley de álgebra booleana)"
author = ["Leobardo Argüelles"]
draft = false
+++

Igual que en álgebra normal, un operando puede distribuirse en 2 o más
términos dentro de un paréntesis.

-   \\(A \wedge (B \vee C) = (A \wedge B) \vee (A \wedge C)\\)

Tabla de verdad para \\(A \wedge (B \vee C)\\)

| A | B | C | Y |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 |

Tabla de verdad para \\((A \wedge B) \vee (A \wedge C)\\)

| A | B | C | Y |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 |

-   \\(A \wedge (B \wedge C) = (A \wedge B) \wedge C\\)
    Tabla de verdad para: \\(A \wedge (B \wedge C)\\)

    | A | B | C | Y |
    |---|---|---|---|
    | 0 | 0 | 0 | 0 |
    | 0 | 0 | 1 | 0 |
    | 0 | 1 | 0 | 0 |
    | 0 | 1 | 1 | 0 |
    | 1 | 0 | 0 | 0 |
    | 1 | 0 | 1 | 0 |
    | 1 | 1 | 0 | 0 |
    | 1 | 1 | 1 | 1 |

    Tabla de verdad para \\((A \wedge B) \wedge C\\)

    | A | B | C | Y |
    |---|---|---|---|
    | 0 | 0 | 0 | 0 |
    | 0 | 0 | 1 | 0 |
    | 0 | 1 | 0 | 0 |
    | 0 | 1 | 1 | 0 |
    | 1 | 0 | 0 | 0 |
    | 1 | 0 | 1 | 0 |
    | 1 | 1 | 0 | 0 |
    | 1 | 1 | 1 | 1 |
