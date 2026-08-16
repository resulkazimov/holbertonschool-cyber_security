#!/bin/bash
grep "Accepted" auth.log | awk '{print $11}' | sort -u | wc -l
