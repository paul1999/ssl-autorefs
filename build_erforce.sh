#!/bin/sh

set -e

echo "######################################"
echo "## Build ER-force AutoRef"
echo "######################################"

cd erforce
git submodule update --init --remote
mkdir -p build
cd build
cmake ..
make -j"$(nproc)"
