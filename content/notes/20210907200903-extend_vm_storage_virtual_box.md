+++
title = "Extend VM Storage (Virtual Box)"
author = ["Leobardo Argüelles"]
draft = false
+++

Extender el espacio desde Virtual Box es súper fácil si la
máquina fue creada con memoria estática.

Si no, va tomar más tiempo, pero los pasos siguen siendo
sencillos.


## EXTENDER MEMORIA ASIGNADA EN VBOX {#extender-memoria-asignada-en-vbox}


### CON MEMORIA ESTÁTICA {#con-memoria-estática}

1.  Simplemente ve abre VM Box y abre Tools -> Media.
2.  Ahí extiende la memoria con el slider. Easy.

Aún no terminas, ahora toca extender la partición.


### CON MEMORIA DINÁMICA {#con-memoria-dinámica}

Haz el paso 1 de [CON MEMORIA ESTÁTICA](#con-memoria-estática). Pero dentro
de la máquina virtual aún no se verá reflejado, porque
la memoria deberá convertirse a estática.

Para hacer esto, abre PowerShell y corre esto:

```powershell
cd <path/to/machine.dvi>
VBoxManage clonemedium "<path/to/machine.dvi" "<machine_name>-clone.dvi" -variant Fixed
```

Esto hará un clon, pero que tenga memoria estática.

Ahora sí puedes extender la partición.


## EXTENDER LA PARTICIÓN {#extender-la-partición}

Sigue [este tutorial](https://www.golinuxcloud.com/extend-resize-primary-partition-non-lvm-linux).
Van 2/2 que me ayuda, sin problemas hasta ahora.
