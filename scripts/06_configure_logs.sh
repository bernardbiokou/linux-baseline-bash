#!/bin/bash

echo "6. Configuring logs..."

# Limit systemd-journald
cat > /etc/systemd/journald.conf.d/10-baseline.conf << EOF
SystemMaxUse=100M
RuntimeMaxUse=50M
SystemKeepFree=500M
EOF

systemctl restart systemd-journald

echo "Logs limited to 100M + auto rotation"
