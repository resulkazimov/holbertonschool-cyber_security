#!/bin/bash
sshd -T | grep -Ev /etc/ssh/sshd_config
