#!/bin/bash
#
# The MIT License (MIT)
# Copyright (c) 2014 fishcried(tianqing.w@gmail.com)
#

# Make vm image

usage()
{
	echo "$PRONAME  -i <instance_id>"
}

PRONAME=$(basename $0)

if [ $# -lt 1 ];then
	usage
	exit 1
fi

while getopts "i:" arg
do
	case $arg in
		i)
			instance=$OPTARG
			;;
		*)
			usage
			exit 1
			;;
	esac
done

INSTANCES_PATH="/var/lib/nova/instances"
if [ ! -e "$INSTANCES_PATH/$instance" ];then
	echo "$instance not exists, please confirm the instance id"
	exit 3
fi

if `virsh list --uuid | grep $instance 2>&1 >/dev/null`; then
	echo "$instance is Running, please shutdown id"
	exit 4
fi

predir=`pwd`
cd $INSTANCES_PATH/$instance
cp disk disk.bak
echo "Converting ..."
qemu-img convert -c disk.bak -O qcow2 disk.img
rm disk.bak
mv -f disk.img $predir/disk.img
echo "Finish, image file is disk.img"

