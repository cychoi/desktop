#!/bin/sh
#
# system-overview.sh
#

CWD=$(pwd)

GRAY="\033[1;30m"
NC="\033[0m"

PACKAGES_BASE=$(egrep -v '(^\#)|(^\s+$)' $CWD/pkglists/packages-base)
PACKAGES_XFCE=$(egrep -v '(^\#)|(^\s+$)' $CWD/pkglists/packages-xfce)
PACKAGES_CODECS=$(egrep -v '(^\#)|(^\s+$)' $CWD/pkglists/packages-codecs)
PACKAGES_FONTS=$(egrep -v '(^\#)|(^\s+$)' $CWD/pkglists/packages-fonts)
PACKAGES_INTERNET=$(egrep -v '(^\#)|(^\s+$)' $CWD/pkglists/packages-internet)
PACKAGES_OFFICE=$(egrep -v '(^\#)|(^\s+$)' $CWD/pkglists/packages-office)
PACKAGES_GRAPHICS=$(egrep -v '(^\#)|(^\s+$)' $CWD/pkglists/packages-graphics)
PACKAGES_MULTIMEDIA=$(egrep -v '(^\#)|(^\s+$)' $CWD/pkglists/packages-multimedia)
PACKAGES_UTILITIES=$(egrep -v '(^\#)|(^\s+$)' $CWD/pkglists/packages-utilities)
PACKAGES_SYSTEM=$(egrep -v '(^\#)|(^\s+$)' $CWD/pkglists/packages-system)

echo
echo -n "Base system : "
for PACKAGE in $PACKAGES_BASE; do
  if [ -r /var/log/packages/${PACKAGE}-[0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo
echo
echo -n "Xfce desktop : "
for PACKAGE in $PACKAGES_XFCE; do
  if [ -r /var/log/packages/${PACKAGE}-[0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo
echo
echo -n "Codecs & plugins : "
for PACKAGE in $PACKAGES_CODECS; do
  if [ -r /var/log/packages/${PACKAGE}-[r,0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo
echo
echo -n "Fonts : "
for PACKAGE in $PACKAGES_FONTS; do
  if [ -r /var/log/packages/${PACKAGE}-[0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo
echo
echo -n "Internet : "
for PACKAGE in $PACKAGES_INTERNET; do
  if [ -r /var/log/packages/${PACKAGE}-[0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo
echo
echo -n "Office : "
for PACKAGE in $PACKAGES_OFFICE; do
  if [ -r /var/log/packages/${PACKAGE}-[0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo
echo
echo -n "Graphics : "
for PACKAGE in $PACKAGES_GRAPHICS; do
  if [ -r /var/log/packages/${PACKAGE}-[0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo
echo
echo -n "Multimedia : "
for PACKAGE in $PACKAGES_MULTIMEDIA; do
  if [ -r /var/log/packages/${PACKAGE}-[0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo
echo
echo -n "Utilities : "
for PACKAGE in $PACKAGES_UTILITIES; do
  if [ -r /var/log/packages/${PACKAGE}-[0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo
echo
echo -n "System & Development : "
for PACKAGE in $PACKAGES_SYSTEM; do
  if [ -r /var/log/packages/${PACKAGE}-[0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo
echo
echo -n "Server : "
for PACKAGE in $PACKAGES_SERVER; do
  if [ -r /var/log/packages/${PACKAGE}-[0-9]* ] ; then
    echo -n "$PACKAGE "
  else
    echo -en "${GRAY}${PACKAGE}${NC} "
  fi
done
echo
echo






