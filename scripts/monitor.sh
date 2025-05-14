#!/bin/bash

# Install Required Tools
export DEBIAN_FRONTEND=noninteractive
apt update -o Acquire::ForceIPv4=true && \
apt install -y --no-install-recommends --fix-missing \
    net-tools \
    tcpdump

# Fix Log Directory Permissions
chown -R root:root /logs
chmod -R 777 /logs

# Start Packet Capture
tcpdump -i eth0 -w /logs/capture.pcap &

# Keep the Container Running
tail -f /dev/null
