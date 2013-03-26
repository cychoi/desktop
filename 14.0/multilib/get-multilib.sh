#!/bin/sh
#
# Retrieve multilib packages for Slackware 14.0

SERVER="http://taper.alienbase.nl"
DIRECTORY="mirrors/people/alien/multilib"
VERSION="14.0"

/usr/bin/wget \
  -c \
  -r \
  -np \
  -nH \
  --cut-dirs=4 \
  --reject "index.html*,*.lst,*.meta,*.asc,*.md5,*.txt,GPG-KEY,*.log,README" \
  --exclude-directories="$DIRECTORY/$VERSION/debug" \
  --execute robots=off \
  $SERVER/$DIRECTORY/$VERSION/
