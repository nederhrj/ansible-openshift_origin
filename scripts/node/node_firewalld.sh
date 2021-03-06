#!/bin/bash
#
# OpenShift Origin Broker firewalld commands
#

# Permanent settings (not taken effect immmediately, only on start/restart)
firewall-cmd --permanent --add-service ssh
firewall-cmd --permanent --add-service http
firewall-cmd --permanent --add-service https
firewall-cmd --permanent --add-port 8000/tcp
firewall-cmd --permanent --add-port 8443/tcp

# Mirror the permanent settings, but in running config
firewall-cmd --add-service ssh
firewall-cmd --add-service http
firewall-cmd --add-service https
firewall-cmd --add-port 8000/tcp
firewall-cmd --add-port 8443/tcp
