#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
impls=`cat $DIR/activeImplementations.cfg`
for b in $impls; do
        ./run_$b.sh &
done
