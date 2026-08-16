#!/bin/bash
grep -E "new user|useradd" auth.log | grep -o "name=[^,]*" | cut -d'=' -f2 | sort -u | tr '\n' ',' | sed 's/,$//' && echo ""
