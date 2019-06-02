#!/bin/sh

set -e

echo "######################################"
echo "## Build ERforce"
echo "######################################"

cd erforce
git submodule update --init --remote
mkdir -p build
cd build
cmake ..
make
