#!/bin/bash

# copies compiled binaries to the local directory so that they can be
# run without future work and builds in the source directory
# overwriting them

die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "usage: ./lightning-install.sh <build_repo>"

cp $1/lightningd/lightningd .
cp $1/lightningd/lightning_channeld .
cp $1/lightningd/lightning_closingd .
cp $1/lightningd/lightning_gossipd .
cp $1/lightningd/lightning_hsmd .
cp $1/lightningd/lightning_onchaind .
cp $1/lightningd/lightning_openingd .
cp $1/cli/lightning-cli .

rm -rf lightning-install.log
date >> lightning-install.log
echo "Installed from $1" >> lightning-install.log
echo "git log:\n"
pushd $1
GIT_LOG=`git log | head -n 40`
popd
echo $GIT_LOG >> lightning-install.log
