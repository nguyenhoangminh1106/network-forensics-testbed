#!/bin/bash

# Install Required Tools
export DEBIAN_FRONTEND=noninteractive
apt update -o Acquire::ForceIPv4=true && \
apt install -y --no-install-recommends --fix-missing \
    netcat-openbsd

# Create the logs directory if it doesn't exist
mkdir -p /logs

# Start the logger
nc -l -p 514 > /logs/attacker_logs.txt &
tail -f /logs/attacker_logs.txt
