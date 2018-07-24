#!/bin/bash

export PATH=$PATH:.
./lightningd --lightning-dir=./lightning-dir --bitcoin-datadir=../ --bitcoin-cli=/home/jarret/testnet-run/bitcoin-cli --bitcoin-rpcuser=bitcoinrpc --bitcoin-rpcpassword=rpc --network=testnet --log-level=debug $@
