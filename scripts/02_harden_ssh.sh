#!/bin/bash
echo "2. Hardening SSH..."

SSHD_CONFIG="/etc/ssh/sshd_config"

# Backup original
cp "$SSHD_CONFIG" "${SSHD_CONFIG}.baseline.backup"

# Apply secure config
sed -i 's/#*PermitRootLogin.*/PermitRootLogin no/' "$SSHD_CONFIG"
sed -i 's/#*PasswordAuthentication.*/PasswordAuthentication no/' "$SSHD_CONFIG"
sed -i 's/#*PubkeyAuthentication.*/PubkeyAuthentication yes/' "$SSHD_CONFIG"
sed -i 's/#*ClientAliveInterval.*/ClientAliveInterval 300/' "$SSHD_CONFIG"
sed -i 's/#*ClientAliveCountMax.*/ClientAliveCountMax 0/' "$SSHD_CONFIG"

systemctl restart ssh
sleep 2
systemctl is-active --quiet ssh && echo "SSH hardened and restarted"

