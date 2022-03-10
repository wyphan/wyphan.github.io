---
layout: post
title:  "Universal Checksum Checker for Linux"
date:   2021-06-25 13:21:00 -0400
author: wyphan
categories: logfile
tags: linux
---

If you use Linux, you probably don't realize that most likely you already have *all* the checksum checker utilities you need already available through [GNU Coreutils](http://www.gnu.org/software/coreutils/), including the most popular ones (MD5, SHA-1, SHA256).

This script is simply a way to interface to these utilities without even caring which type it is, or even the order in which the arguments are passed (hash first then filename, or the other way around). Currently it supports MD5, SHA-1, SHA256, SHA384, and SHA512. Hash type detection is performed by hexadecimal content and length, based on [this answer](https://stackoverflow.com/questions/7662465/bash-is-there-a-simple-way-to-check-whether-a-string-is-a-valid-sha-1-or-md5/7662661#7662661) on StackOverflow.

Download here: [chksum.sh](../../../../assets/scripts/chksum.sh)

---

last edited: Jun 25, 2021 (WYP) | [home]({{ site.url }})
