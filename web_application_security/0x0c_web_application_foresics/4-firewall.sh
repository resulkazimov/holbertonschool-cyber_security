#!/bin/bash
grep -i "iptables" auth.log | grep -E "\-A|\-I" | wc -l
