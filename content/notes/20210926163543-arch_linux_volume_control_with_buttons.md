+++
title = "Arch Linux volume control (with buttons)"
author = ["Leobardo Argüelles"]
draft = false
+++

Source: <https://wiki.archlinux.org/title/Xbindkeys>

1.  Install the `xbindkeys` package.
2.  Create the `/.xbindkeysrc` file.
3.  Write the content bellow in said file.
4.  Run the command `xbindkeys --poll-rc`.
    Add it to `.bashrc` so that it runs on startup.
5.  Done.

<!--listend-->

```text
# Increase volume
"pactl set-sink-volume @DEFAULT_SINK@ +1000"
   XF86AudioRaiseVolume

# Decrease volume
"pactl set-sink-volume @DEFAULT_SINK@ -1000"
   XF86AudioLowerVolume

# Mute volume
"pactl set-sink-mute @DEFAULT_SINK@ toggle"
   XF86AudioMute

# Mute microphone
"pactl set-source-mute @DEFAULT_SOURCE@ toggle"
   XF86AudioMicMute
```
