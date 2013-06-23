#!/usr/bin/env bash
if [ ! -e "t/options.t" ]; then
    echo "Hey! Need to run this script in the Glib source tree"
    exit 1
fi
LANG=de_DE.ISO8859-1 LC_ALL= make test
LANG=de_DE.ISO8859-1 LC_ALL=hr_HR.ISO8859-2 make test
LANG=de_DE.ISO8859-1 LC_ALL=C make test
LANG=de_DE.ISO8859-1 LC_ALL=POSIX make test
LANG= LC_ALL= make test
LANG= LC_ALL=de_DE.UTF-8 make test
LANG= LC_ALL=en_GB.US-ASCII make test
