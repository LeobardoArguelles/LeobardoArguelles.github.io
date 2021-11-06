+++
title = "Hydra (bruteforcing)"
author = ["Leobardo Argüelles"]
draft = false
+++

Tool to bruteforce logins/passwords.

Basic syntax:

```shell
hydra -l root -P <wordlist> <service>://<target>:<port> <flags>
# E.g: hydra -l root -P /usr/share/wordlists/metasploit/unix_passwords.txt ssh://192.168.57.134:22 -t 4 -V
```

-   -l is for loggin
-   -P indicates the **password** file
-   -t is the number of threads
-   -V verbosity
