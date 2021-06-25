#!/bin/bash

help() {
  echo "Usage: $0 [file] [checksum]"
  echo "Currently only supports MD5, SHA1, SHA256"
}

# Quick exit
if [ -z $1 ]; then help; exit 1; fi
if [ -z $2 ]; then help; exit 2; fi

# Adapted from
# https://stackoverflow.com/questions/7662465/bash-is-there-a-simple-way-to-check-whether-a-string-is-a-valid-sha-1-or-md5/7662661#7662661
is_valid() {
  case $1 in
    ( *[!0-9A-Fa-f]* | "" ) return 1 ;;
    ( * )
    case ${#1} in
      ( 32 | 40 | 64 | 96 | 128 ) return 0 ;;
      ( * )       return 1 ;;
    esac
  esac
}

# Check for valid signature
if is_valid $1 ; then
  # Input is reversed
  sig=$1
  file=$2
elif is_valid $2 ; then
  file=$1
  sig=$2
else
  echo "Invalid signature"
  exit 2
fi

# Check if file exists
if [ ! -f $file ]; then
  echo "Cannot find $file"
  exit 1
else
  # Normal operation
  case ${#sig} in
    32)
      # MD5
      echo "$sig $file" | md5sum --check ;;
    40)
      # SHA1
      echo "$sig $file" | sha1sum --check ;;
    64)
      # SHA256
      echo "$sig $file" | sha256sum --check ;;
    96)
      # SHA384
      echo "$sig $file" | sha384sum --check ;;
    128)
      # SHA512
      echo "$sig $file" | sha512sum --check ;;
    *)
      echo "Unexpected error" ;;
  esac
  exit $?
fi
