#!/usr/bin/env bash

if [[ "$1" = "next" ]]; then
	/usr/local/bin/bsp-layout next --layouts tiled,tall,monocle,grid,wide,rwide,even
elif [[ "$1" = "previous" ]]; then
	/usr/local/bin/bsp-layout previous --layouts tiled,tall,monocle,grid,wide,rwide,even
fi
