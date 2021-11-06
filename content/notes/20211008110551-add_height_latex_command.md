+++
title = "Add height (Latex command)"
author = ["Leobardo Argüelles"]
draft = false
+++

Usado en combo con [subf]({{<relref "20211007153156-sub_caption_matriz_de_imagenes_latex.md#" >}}) para crear [matrices de imágenes en latex]({{<relref "20211007153011-latex_image_matrix.md#" >}}).


## LATEX DEFINITION {#latex-definition}


## AS ORG HEADER {#as-org-header}

```org
#+LATEX_HEADER:\newcommand*{\addheight}[2][.5ex]{  \raisebox{0pt}[\dimexpr\height+(#1)\relax]{#2}}
```
