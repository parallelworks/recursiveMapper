#!/bin/bash

rootdir=
if [ "$1" == "-root" ]; then
    rootdir=$2
else
    echo "Invalid parameter: $1"
    exit 1
fi

if [ "$3" == "-pattern" ]; then
    pattern=$4
else
    pattern="*"
fi

filelist=$(find $rootdir -type f )
counter=0

for ff in $filelist
do
	if [[ "${ff##*/}" == $pattern ]]; then
		echo "[$counter] $ff"
		let counter=counter+1
	fi 
done
