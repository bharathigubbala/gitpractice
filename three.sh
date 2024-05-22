i#!/bin/bash

THRESHOLD=80
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Disk usage is above $THRESHOLD%. Current usage is $USAGE%."
else
  echo "Disk usage is under control. Current usage is $USAGE%."
fi

