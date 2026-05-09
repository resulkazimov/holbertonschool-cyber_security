#!/bin/bash
ps -u "$1" -f | grep -vE "^\S+\s+\S+\s+\S+\s+\S+\s+0\s+0"
