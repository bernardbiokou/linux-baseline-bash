#!/bin/bash
source ./config.sh

echo "4. Setting up UFW..."

apt install -y ufw

ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw --force enable

# Optional ports
[[ -n "$UFW_HTTP_PORT" ]] && ufw allow "$UFW_HTTP_PORT"
[[ -n "$UFW_HTTPS_PORT" ]] && ufw allow "$UFW_HTTPS_PORT"

ufw status | head -10
echo "UFW active"
