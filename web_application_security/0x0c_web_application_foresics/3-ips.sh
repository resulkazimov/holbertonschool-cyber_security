#!/bin/bash
grep "Accepted password" auth.log | awk '{print $11}' | sort -u | wc -l
