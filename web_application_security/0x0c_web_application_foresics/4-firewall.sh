#!/bin/bash
grep -i -E "iptables|firewall" auth.log | grep -i -E "add|rule|insert" | wc -l
