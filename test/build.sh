#!/bin/sh

# ssl-logtools for log playback
cd ssl-logtools
mkdir -p build
cd build
cmake ..
make
cd ../..

# ssl-refbox
cd ssl-refbox
make
cd ..

# autoref evaluator and recorder
go get -u github.com/RoboCup-SSL/ssl-go-tools/autorefevaluator
go get -u github.com/RoboCup-SSL/ssl-go-tools/autoreflogger
go get -u github.com/RoboCup-SSL/ssl-go-tools/ssl-logplayer
