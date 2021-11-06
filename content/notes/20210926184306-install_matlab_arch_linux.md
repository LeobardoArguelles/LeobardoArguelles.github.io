+++
title = "Install Matlab Arch Linux"
author = ["Leobardo Argüelles"]
draft = false
+++

Download, install, and activate Matlab from the [official page](https://www.mathworks.com/products/matlab.html).
There shouldn't be any problems here.

Now, what I had to do to actually make it work:

1.  Install Java 8 `sudo pacman -S jdk8-openjdk`.
2.  Add to your `.bashrc` these variables:
    1.  `export MATLAB_JAVA=/usr/lib/jvm/java-8-openjdk/jre/`
    2.  `export J2D_D3D=false`
    3.  `export GTK_PATH=/usr/lib/gtk-3.0`
    4.  `export _JAVA_AWT_WM_NONREPARENTING=1`
3.  Create a symbolic link to launch it just calling `matlab`.
    `ln -s <path/to/MATLAB/VERSION/bin/matlab> /usr/local/bin`
    E.g: `ln -s /usr/local/MATLAB/R2020a/bin/matlab /usr/local/bin`

Done? I think this is it, I hope I didn't skip any vital steps.
