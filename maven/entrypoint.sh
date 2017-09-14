#!/bin/sh
#
# Authors:
#  - Abner Ballardo <modlost@modlost.net>
#

if [ "$*" != "" ]; then
  mvn $*
  exit $?
fi

if [ "$BRANCH" = "master" ]; then
  echo "<< Master Branch >>"
  mvn deploy
else
  echo "<< Not Master Branch >>"
  mvn package
fi
