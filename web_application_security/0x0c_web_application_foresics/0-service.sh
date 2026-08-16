#!/bin/bash
grep -i "sshd" auth.log | awk '{for(i=1;i<=NF;i++) if($i ~ /^[a-zA-Z0-9_]+(\(sshd:[a-z]+\)?:)?$/) print $i}' | grep -E "pam_unix|Failed|Invalid|Address|Accepted|reverse|Did|error|Server|subsystem|syslogin|Received|PAM|Jax|Bad|new|changed|change|Kayn|Exiting" | sort | uniq -c | sort -nr
