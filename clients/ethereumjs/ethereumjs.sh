#!/bin/bash

# Startup script 

# Immediately abort the script on any error encountered
set -e

# If a specific network ID is requested, use that
if [ "$HIVE_NETWORK_ID" != "" ]; then
	FLAGS="$FLAGS --network-id $HIVE_NETWORK_ID"
else
	#default it to ropsten
	FLAGS="$FLAGS --network-id 3"
fi


echo "starting the ethereumjs client now..."

ethereumjs --network=$HIVE_NETWORK_ID