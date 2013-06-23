#!/usr/bin/env bash
if [ ! -e "t/options.t" ]; then
    echo "Hey! Need to run this script in the Glib source tree"
    exit 1
fi
LANG=de_DE.ISO8859-1 LC_ALL= prove -v t/option.t
LANG=de_DE.ISO8859-1 LC_ALL=hr_HR.ISO8859-2 prove -v t/option.t
LANG=de_DE.ISO8859-1 LC_ALL=C prove -v t/option.t
LANG=de_DE.ISO8859-1 LC_ALL=POSIX prove -v t/option.t
LANG= LC_ALL= prove -v t/option.t
LANG= LC_ALL=de_DE.UTF-8 prove -v t/option.t
LANG= LC_ALL=en_GB.US-ASCII prove -v t/option.t
