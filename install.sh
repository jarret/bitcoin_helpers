#!/bin/bash

# copies compiled binaries to the local directory so that they can be
# run without future work and builds in the source directory
# overwriting them

die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "usage: ./install.sh <build_repo>"

cp $1/src/bitcoind .
cp $1/src/bitcoin-cli .
cp $1/src/qt/bitcoin-qt .
cp $1/src/bitcoin-tx .

rm -rf install.log
date >> install.log
echo "Installed from $1" >> install.log
echo "git log:\n"
pushd $1
GIT_LOG=`git log | head -n 40`
popd
echo $GIT_LOG >> install.log
