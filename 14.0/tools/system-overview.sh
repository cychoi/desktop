#!/bin/sh
#
# system-overview.sh
#

CWD=$(pwd)

GRAY="\033[1;30m"
NC="\033[0m"

PACKAGES=$(egrep -v '(^\#)|(^\s+$)' $CWD/pkglists/desktop-packages)

echo
echo -n "Installed: "
for PACKAGE in $PACKAGES; do
  if [ -r /var/log/packages/${PACKAGE}-[r,0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo

