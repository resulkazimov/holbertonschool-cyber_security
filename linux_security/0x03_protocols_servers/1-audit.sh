#!/bin/bash
grep -vE "^#|^[[:space:]]*#|^$" /etc/ssh/sshd_config
