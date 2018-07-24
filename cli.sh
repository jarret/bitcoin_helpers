#!/bin/bash

./bitcoin-cli -testnet -rpcuser=bitcoinrpc -rpcpassword=rpc --datadir=. $@
