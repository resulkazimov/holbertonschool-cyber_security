#!/bin/bash
iptables -A INPUT -p tcp --dport 22 -s "$1" -j ACCEPT
iptables -A INPUT -j DROP
