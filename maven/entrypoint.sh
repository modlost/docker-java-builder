#!/bin/sh
#
# Authors:
#  - Abner Ballardo <modlost@modlost.net>
#

ORIGINAL_ENTRYPOINT=/usr/local/bin/mvn-entrypoint.sh

if [ "$*" != "" ]; then
  mvn $*
  exit $?
fi

if [ "$BRANCH" = "master" ]; then
  echo "<< Master Branch >>"
  $ORIGINAL_ENTRYPOINT mvn clean install
else
  echo "<< Not Master Branch >>"
  $ORIGINAL_ENTRYPOINT mvn clean package
fi
