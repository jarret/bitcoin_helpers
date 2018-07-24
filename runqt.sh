#!/bin/bash

./bitcoin-qt -testnet -pid=bitcoind.pid --datadir=. -printtoconsole $@
