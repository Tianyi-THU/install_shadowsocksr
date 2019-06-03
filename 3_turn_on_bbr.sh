#!/usr/bin/env bash

# trun on TCP BBR
#echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
#echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sudo bash -c 'echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf'
sudo bash -c 'echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf'

# make it work
sudo sysctl -p

# check whether work
sysctl net.ipv4.tcp_available_congestion_control
lsmod | grep bbr
