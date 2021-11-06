+++
title = "Arch Linux Beep Sound"
author = ["Leobardo Argüelles"]
draft = false
+++

Save your ears the sorrow, turn off the beep today, not tomorrow.

For a one-timer, not-permanent solution, just run on terminal:
`sudo rmmod pcspkr`.

To win the war against the annoying speaker, **blacklist it**.

1.  Create the file: `/etc/modprobe.d/nobeep.conf`
2.  Add this line: "blacklist pcspkr"
