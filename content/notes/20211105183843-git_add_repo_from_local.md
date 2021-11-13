+++
title = "Git add repo from local"
author = ["Leobardo Argüelles"]
description = "Workflow to push files to github repo when directory already existed in local."
draft = false
+++

1.  Init an empty repository in local: `git init -b main`
2.  Add origin: `git remote add origin git@github.com:<Username>/<repo>.git`
3.  Set upstream: `git branch --set-upstream-to=origin/main main`
4.  Pull from remote: `git pull --rebase`
    Rebase to prevent losing any data.
5.  Push: `git push`
