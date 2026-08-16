#!/bin/bash
ATTACKER_IP=$(awk '{print $1}' logs.txt | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')
grep "^$ATTACKER_IP " logs.txt | awk -F'"' '{print $6}' | sort | uniq -c | sort -nr | head -n 1 | sed 's/^[[:space:]]*[0-9]*[[:space:]]*//'
