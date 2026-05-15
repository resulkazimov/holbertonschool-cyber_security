#!/bin/bash
grep -vE '^\s*(#|$)' /etc/ssh/sshd_config
