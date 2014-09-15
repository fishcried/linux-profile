#!/bin/bash

#
# convert file name
# publish.md -> 2014-04-19-publish.md
#
cp $1 "$(date +%Y-%m-%d)-$1" && rm $1
