+++
title = "Linux Zoom Can't Annotate"
author = ["Leobardo Argüelles"]
draft = false
+++

## INSTALLATION {#installation}

You need an extra package to handle transparecies.

1.  Install `xdpyinfo`
    `sudo pacman -S xdpyinfo`
2.  Check if you have the "Composite" extension enabled for the X Serve:
    Run `xdpyinfo | grep Composite`
    It should output "Composite". Otherwise, check the source.
3.  Install `xcompmgr`
    `sudo pacman -S xcompmgr`


## CONFIGURATION {#configuration}

1.  Run `xcompmgr -c`
2.  Add the following line to your _xprofile_ to make it run at session start.
    `xcompmgr -c &`
