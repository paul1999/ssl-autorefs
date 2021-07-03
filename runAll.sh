#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR" || exit 1
impls=$(cat activeImplementations.cfg)
for b in $impls; do
  "./run_$b.sh" &
done
