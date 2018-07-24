#!/bin/bash

./bitcoind -rpcuser=bitcoinrpc -rpcpassword=rpc -server=1 -txindex=1 -rpcthreads=100 -rpcserialversion=0 -pid=bitcoind.pid -testnet --datadir=. -printtoconsole $@
