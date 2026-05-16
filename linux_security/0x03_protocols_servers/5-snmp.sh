#!/bin/bash
grep -h "public" /etc/snmp/snmpd.conf 2>/dev/null | grep -v "^#"
