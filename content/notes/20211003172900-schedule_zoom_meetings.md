+++
title = "Schedule Zoom Meetings"
author = ["Leobardo Argüelles"]
draft = false
+++

Create a bash file with the following syntax:

```shell
zoom "zoommtg://zoom.us/join?confno=<conference_number>&pwd=<password>"
```

Notes:

-   Password is optional
-   To get the necessary data, open the call on internet, and get it from the link.
    For example:
    url: zoommtg://zoom.us/join?confno=81119430791&pwd=bnBOOEZ6UWFtV3ZvUnVLK0VmakdWQT09
    conference number: 81119430791
    password: bnBOOEZ6UWFtV3ZvUnVLK0VmakdWQT09

Once you have the script, schedule it using [cron]({{<relref "20210925213527-cron_job.md#" >}}) or [systemd]({{<relref "20211003173313-scheduling_with_systemd.md#" >}}).
