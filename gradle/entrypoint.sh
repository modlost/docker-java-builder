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
  gradle clean install
else
  echo "<< Not Master Branch >>"
  gradle clean assemble
fi
