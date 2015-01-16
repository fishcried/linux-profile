#!/bin/bash
#
# The MIT License (MIT)
# Copyright (c) 2014 fishcried(tianqing.w@gmail.com)
#

netstat -n | awk '/^tcp/ {++S[$NF]} END {for(a in S) printf("%s\t%d\n",a, S[a])}' |\
	sort -n -k2r,2
