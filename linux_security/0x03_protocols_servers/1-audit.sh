#!/bin/bash
grep -vE '^[[:space:]]*#|^[[:space:]]*$' /etc/ssh/sshd_config
