#!/bin/bash
echo "5. Enabling automatic security updates..."

apt install -y unattended-upgrades
dpkg-reconfigure --priority=low unattended-upgrades

# Enable only security updates
echo 'APT::Get::Install-Recommends "0";' > /etc/apt/apt.conf.d/99unattended-upgrades-recommends
echo 'Unattended-Upgrade::OnlyOnACPower "false";' > /etc/apt/apt.conf.d/50unattended-upgrades-power
echo 'Unattended-Upgrade::Remove-Unused-Dependencies "true";' >> /etc/apt/apt.conf.d/50unattended-upgrades

echo "unattended-upgrades active (security only)"
