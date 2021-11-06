+++
title = "Battery status bash script"
author = ["Leobardo Argüelles"]
draft = false
+++

What we want to do is get the battery info, which we can do with
the package `acpi`, get the necessary data, and then if the battery
is low, send a notification using `notify-send`.

This is done with:

```shell
BATTINFO=`acpi`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 4 -d " " | cut -c -2` < 15 ]] ; then
    DISPLAY=:0.0 /usr/bin/notify-send "low battery" "$BATTINFO"
fi
```

Then we just run it regularly using a [Cron job]({{<relref "20210925213527-cron_job.md#" >}}).


## SETUP {#setup}

If you are setting this up for the first time:

1.  Install the packages

    ```shell
    sudo pacman -S acpi notify-send
    ```
2.  Create `check_battery.sh` with the contents despicted at the start of the note.
3.  Add a cronjob every 5 minutes.

    ```shell
    crontab -e
    ```

    Contents:

    ```text
        */5 * * * * ~/.bashscripts/check_battery.sh
    ```
