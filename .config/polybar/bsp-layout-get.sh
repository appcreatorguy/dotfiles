#!/usr/bin/env bash

LAYOUT=$(/usr/local/bin/bsp-layout get)

if [ "$LAYOUT" = "-" ]; then
  exit 1
else
  echo "$LAYOUT"
fi
