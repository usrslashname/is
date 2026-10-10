#!/bin/sh
if $APPLICATION_NAME --help | grep -iq "GNU"; then
   echo "yes"
else
   echo "no"
fi
