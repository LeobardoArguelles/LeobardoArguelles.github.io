+++
title = "Scheduling with systemd"
author = ["Leobardo Argüelles"]
draft = false
+++

## PROCESS {#process}

1.  Create your bash script, **and make it executable**.
2.  Create your _timer_ and _service_ files.
3.  Enable and activate the **timer**, using:
    `systemctl enable <file>.timer --user`
    `systemctl start <file>.timer --user`
    Note: The user flag is, obviously, for user scripts.
    For system-wide scripts, run it without that flag.


## NEEDED FILES {#needed-files}

You'll need 2 files, **both with the same name**:

-   Service unit
    Here you specify which script to run.
-   Timer unit
    The timer controls and activates the service unit.


### TIMER {#timer}

There are 2 different kinds: Realtime, and monolitic.
Their name should be in the format `<fooname>.timer`


#### REALTIME {#realtime}

These timers activate based on the calendar, the clock, whatever time
specified.

They should be used when you want the service to activate at a specific
time, say, every sunday at 6:00 am.

<!--list-separator-->

-  TIME FORMAT

    ```shell
    OnCalendar=DayOfWeek Year-Month-Day Hour:Minute:Second
    ```

    An asterisk may be used to specify any value and commas may be used to
    list possible values. Two values separated by .. indicate a contiguous
    range.

<!--list-separator-->

-  EXAMPLE

    ```text
    /etc/systemd/system/foo.timer

    [Unit]
    Description=Run foo weekly

    [Timer]
    OnCalendar=weekly
    Persistent=true

    [Install]
    WantedBy=timers.target
    ```

    Note on the example:

    -   In the [Install] section, `WantedBy=timers.target` allows the service to be active after boot. Add it.
    -   `Persistent=true`
        This makes the service run ASAP if its last activation time was
        missed (for example if the system was turned off)


#### MONOLITIC {#monolitic}

These are like _relative_ timers. Their starting point depends on how it
was specified.
Options:

-   `OnActiveSec=`
    Relative to the moment the timer unit was activated.
-   `OnBootSec=`
    Relative to when the machine was booted up.
-   `OnStartupSec=`
    Relative to when the service manager was first started.
-   `OnUnitActiveSec=`
    Relative to when the unit the timer is activating, was last activated.
-   `OnUnitInactiveSec=`
    Relative to when the unit the timer is activating, was last
    deactivated.

For more information, check `man systemd.timer`.

<!--list-separator-->

-  EXAMPLE

    ```text
    # Starts 15 minute after boot, and again every week while the system runs
    /etc/systemd/system/foo.timer

    [Unit]
    Description=Run foo weekly and on boot

    [Timer]
    OnBootSec=15min
    OnUnitActiveSec=1w

    [Install]
    WantedBy=timers.target
    ```

    Note on the example:

    -   In the [Install] section, `WantedBy=timers.target` allows the service to be active after boot. Add it.


### SERVICE {#service}

Their name should be in the format `<fooname>.service`
Note: <fooname> should be the same for both the timer and the service.

```text
[Unit]
Description = <Description>

[Service]
Type=simple
ExecStart=<path/to/script.sh>
```
