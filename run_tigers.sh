#!/bin/sh

mode=$1
if [ -z "$mode" ]; then
	mode=passive
fi

cd tigers
./run.sh $mode
