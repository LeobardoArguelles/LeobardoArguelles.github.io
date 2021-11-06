+++
title = "Batch Scripting (Windows)"
author = ["Leobardo Argüelles"]
draft = false
+++

## File extension {#file-extension}

It can be either `.bat` or `.cmd`


## Commands {#commands}


### Turn off cmd logging {#turn-off-cmd-logging}

`@echo off`


### Comments {#comments}

"Rem" marks a comment:
`Rem A comment here`.


### Open a shortcut {#open-a-shortcut}

Just write the path to the shortcut, starting from the bat file
location.
`"Path/to/script.bat"`


## Scheduling {#scheduling}

1.  Open task scheduler
2.  Click on Create Task
3.  Follow the instructions
    1.  Write name and description
    2.  Set triggers
    3.  Set action
        1.  Action: Start a program
        2.  Program/script: <Path/to/file.bat>
        3.  Add "Start in" field with <Path/to/file>
            Or really, wherever you would like for your script to start running.
            I guess is like doing "cd <path/to/file>".
            e.g: I had to use this option to be able to open a Zoom shortcut located
            in the same directory than the script, because the script only had the
            instruction "<Shortcut name>.lnk", which worked when clicked, but had trouble
            finding that file using the task scheduler.

Note: **Don't** check the "Run wether user is logged on or not" checkbox.
I haven't found a way to make it work, but right now, it just won't run,
for some dumb, stupid reason. Hate windows love Linux urgh.
