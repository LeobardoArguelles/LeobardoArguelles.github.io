+++
title = "Sub-caption matriz de imagenes (Latex)"
author = ["Leobardo Argüelles"]
draft = false
+++

Este comando lo uso en combo con tabular para crear una matriz de figuras,
donde cada figura tenga su propio texto.


## LATEX DEFINITION {#latex-definition}

Se usa de la siguiente manera:


## AS ORG HEADER {#as-org-header}

```org
#+LATEX_HEADER: \newcommand{\subf}[2]{{\small\begin{tabular}[t]{@{}c@{}}#1\\#2 \end{tabular}}}
```
