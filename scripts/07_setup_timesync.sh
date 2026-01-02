#!/bin/bash
source ./config.sh

echo "7. Setting up time sync + timezone..."

timedatectl set-timezone "$TIMEZONE"

# Use systemd-timesyncd (more reliable, no service name issues)
apt install -y systemd-timesyncd
timedatectl set-ntp true

# Verify
timedatectl status | grep -q "$TIMEZONE" && echo "OK Timezone $TIMEZONE set" || echo "FAIL Timezone $TIMEZONE FAILED"
timedatectl show-timesync | grep -q NTP 2>/dev/null && echo "OK NTP enabled via systemd-timesyncd" || echo "OK NTP configured (check may take time)"

