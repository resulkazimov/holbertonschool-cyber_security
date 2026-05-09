#!/bin/bash
ps -u "$1" -f | grep -v " 0  0 "
