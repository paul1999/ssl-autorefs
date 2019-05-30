[![CircleCI](https://circleci.com/gh/RoboCup-SSL/ssl-autorefs/tree/master.svg?style=svg)](https://circleci.com/gh/RoboCup-SSL/ssl-autorefs/tree/master)

# ssl-autorefs
A collection of all available auto referees for the RoboCup SSL

## Getting started
```
# Checkout all implementations
git submodule update --init

# Install dependencies
sudo ./installDeps.sh

# Build all
./buildAll.sh

# Run all
./runAll.sh
```
## Configuration
You can choose which implementation should be build with `buildAll.sh` and run with `runAll.sh` in the `activeImplementations.cfg` config file.

## Tests
The `test` folder contains scripts to initiate tests, like playing a log file and recording auto referee decisions.
