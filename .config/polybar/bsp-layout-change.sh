#!/usr/bin/env bash

if [[ "$1" = "next" ]]; then
  /usr/local/bin/bsp-layout next --layouts tiled,tall,monocle,grid,wide
elif [[ "$1" = "previous" ]]; then
  /usr/local/bin/bsp-layout previous --layouts tiled,tall,monocle,grid,wide
fi
