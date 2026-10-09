#!/bin/sh
if $APPLICATION_NAME | grep -iq "GNU"; then
   echo "yes"
else
   echo "no"
fi
