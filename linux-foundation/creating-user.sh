#!/bin/bash

# Create non-root user and grant sudo
adduser hamza
usermod -aG sudo hamza

# Set up SSH access
mkdir -p /home/hamza/.ssh
chown hamza:hamza /home/hamza/.ssh
chmod 700 /home/hamza/.ssh

# Copy public key
# (Paste your public key into authorized_keys manually)
vi /home/hamza/.ssh/authorized_keys
chown hamza:hamza /home/hamza/.ssh/authorized_keys
chmod 600 /home/hamza/.ssh/authorized_keys

# Test SSH (optional)
ssh hamza@localhost

