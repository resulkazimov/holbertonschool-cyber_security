#!/bin/bash
grep -i "Accepted" auth.log | grep -E -o "([0-9]{1,3}\.){3}[0-9]{1,3}" | sort -u | wc -l
