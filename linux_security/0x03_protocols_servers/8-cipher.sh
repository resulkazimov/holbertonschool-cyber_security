#!/bin/bash
nmap -sV -p 443 --script ssl-enum-ciphers "$1"
