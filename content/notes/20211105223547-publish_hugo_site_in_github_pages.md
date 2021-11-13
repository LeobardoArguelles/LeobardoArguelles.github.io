+++
title = "Publish hugo site in github pages"
author = ["Leobardo Argüelles"]
description = "How to publish a static site generated with Hugo, to the free github pages."
draft = false
+++

1.  Create a repository in your github account named: <github\_username>.github.io
    Don't have a github account? Well, create one.
    Don't add any of the freebies included in the repo (License, readme, etc...)
2.  [Link the repository]({{<relref "20211105183843-git_add_repo_from_local.md#" >}}) with the directory that has your Hugo files.
3.  In the main directory of your site, create the directories and the file ".github/workflows/gh-pages.yml"
    This is a default path for github to look for "gh-pages.yml"
4.  Inside "gh-pages.yml", add the code from the [appendix](#appendix-git-action-code).
5.  In the main directory, run `hugo`.
    Just like that, a "./public" directory should appear.
6.  Add, commit, and push to main.
    The github action that you loaded in "gh-pages.yml" will
    build the site for you, from your files in "./public"
7.  Go to your github pages settings
    Located as of 2021/11/05 in:
    <https://github.com/><Username>/<Username>.github.io/settings/pages
8.  Change the branch that the site will build from. It might be set to "main", chang it to "gh-pages"
    ![](/ox-hugo/branch.png)
9.  Now it should be published correctly.


## APPENDIX: GIT ACTION CODE {#appendix-git-action-code}

```yml
name: github pages

on:
  push:
    branches:
      - main  # Set a branch to deploy
  pull_request:

jobs:
  deploy:
    runs-on: ubuntu-20.04
    steps:
      - uses: actions/checkout@v2
        with:
          submodules: true  # Fetch Hugo themes (true OR recursive)
          fetch-depth: 0    # Fetch all history for .GitInfo and .Lastmod

      - name: Setup Hugo
        uses: peaceiris/actions-hugo@v2
        with:
          hugo-version: 'latest'
          # extended: true

      - name: Build
        run: hugo --minify

      - name: Deploy
        uses: peaceiris/actions-gh-pages@v3
        if: github.ref == 'refs/heads/main'
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./public
```


## REFERENCES {#references}

(These might not work as well as my own instructions)

-   [Build a Personal Website With Github Pages and Hugo](https://levelup.gitconnected.com/build-a-personal-website-with-github-pages-and-hugo-6c68592204c7)
-   [About GitHub Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages#user--organization-pages)
-   [Host on GitHub](https://gohugo.io/hosting-and-deployment/hosting-on-github/)
