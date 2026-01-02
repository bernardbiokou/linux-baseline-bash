#!/bin/bash
source ./config.sh

echo "3. Installing essential packages..."

apt update
apt install -y vim htop curl wget net-tools fail2ban tree glances

echo "OK Essential packages installed"
