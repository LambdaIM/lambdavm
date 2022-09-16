#!/bin/bash

echo "prepare genesis: Run validate-genesis to ensure everything worked and that the genesis file is setup correctly"
./lambdavm validate-genesis --home /lambdavm

echo "starting lambdavm node $ID in background ..."
./lambdavm start \
--home /lambdavm \
--keyring-backend test

echo "started lambdavm node"
tail -f /dev/null