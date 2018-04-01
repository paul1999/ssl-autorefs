#!/bin/bash

set -e

echo "Start Logger"
autoreflogger &
LOG_PID=$!

echo "Start referees"
../runAll.sh

echo "Start playback"
./play.sh

echo "Stop logger"
kill $LOG_PID

logfile="`ls -t log/*.log | head -1`"
echo "Start evaluator on log file $logfile"
autorefevaluator $logfile
