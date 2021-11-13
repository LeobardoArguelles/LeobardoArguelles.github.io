#!/bin/bash

find ~/org/wiki/ -exec readlink -f {} ";" | grep -v "/imgs" | grep -v "/daily" | grep "\.org" > ~/projects/sites/wiki/wikifiles.txt
