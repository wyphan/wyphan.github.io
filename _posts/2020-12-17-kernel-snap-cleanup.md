---
layout: post
title:  "Remove Old Kernels and Snaps in Ubuntu with a One-Liner Command"
date:   2020-12-17 12:57:00 -0500
author: wyphan
categories: logfile
---

## Remove Old Kernels in Ubuntu with a One-Liner Command

Based on [this blog post](http://tuxtweaks.com/2010/10/remove-old-kernels-in-ubuntu-with-one-command/), which explains the different parts that make up the pipeline.

Edit (Mar 18, 2020): Added `grep -v "hwe"` to the pipeline to exclude [hardware enablement](https://wiki.ubuntu.com/Kernel/LTSEnablementStack) packages.

First, check which kernel version is loaded in memory:
```
uname -a
``` 

To see which packages will be removed:
```
dpkg -l linux-* | awk '/^ii/{ print $2}' | grep -v -e `uname -r | cut -f1,2 -d"-"` | grep -e [0-9] | grep -E "(image|headers|modules|tools)" | grep -v "hwe" | xargs sudo apt --dry-run remove
```

Make sure only old kernel versions are listed. To actually remove them:
```
dpkg -l linux-* | awk '/^ii/{ print $2}' | grep -v -e `uname -r | cut -f1,2 -d"-"` | grep -e [0-9] | grep -E "(image|headers|modules|tools)" | grep -v "hwe" | xargs sudo apt -y purge
``` 

On my computers, this command is also available locally as `~/bin/removekernel`. It will automatically invoke `sudo` when the `"-y"` switch is added. Download here: [removekernel.sh](../../../../assets/scripts/removekernel.sh)

## Remove Old Snaps with a One-Liner Command

Based on [this question](https://superuser.com/questions/1310825/how-to-remove-old-version-of-installed-snaps) on SuperUser. The `awk`-less version doesn't work, though.

To list installed snaps, simply use:
```
snap list --all
``` 

Then, to remove snaps that are currently disabled (which most of the time happens to be old versions):
```
LANG=C snap list --all | awk '/disabled/{print $1, $3}' | while read snapname revision; do sudo snap remove "$snapname" --revision="$revision"; done
```

The `LANG=C` ensures this one-liner to run on any locale, as explained in one of the comments in the SuperUser page.

---

last edited: Dec 17, 2020 (WYP) | [home]({{ site.url }})
