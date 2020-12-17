#!/bin/bash

if [ "$1" == "-y" ]; then
  set -v
  dpkg -l linux-* | awk '/^ii/{ print $2}' | grep -v -e `uname -r | cut -f1,2 -d"-"` | grep -e [0-9] | grep -E "(image|headers|modules|tools)" | grep -v "hwe" | xargs sudo apt -y purge
else
  echo "Dry run, add \"-y\" to actually perform it"
  set -v
  dpkg -l linux-* | awk '/^ii/{ print $2}' | grep -v -e `uname -r | cut -f1,2 -d"-"` | grep -e [0-9] | grep -E "(image|headers|modules|tools)" | grep -v "hwe" | xargs apt --dry-run remove
fi
