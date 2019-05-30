#!/bin/sh

mode=$1
if [ -z "$mode" ]; then
	mode=active
fi

cd tigers
./run.sh $mode
