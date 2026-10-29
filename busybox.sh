#!/bin/sh
if $APPLICATION_NAME --help | grep -iq "BusyBox"; then
   echo "yes"
else
   echo "no"
fi
