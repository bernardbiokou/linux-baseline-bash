# Linux Baseline Kit (Debian/Ubuntu)

Linux baseline kit for sysadmins and DevOps. Bash scripts to provision a secure, standardized Debian/Ubuntu server: non-root user, SSH hardening, UFW, unattended upgrades, basic tooling.

## Features

- Create a non-root admin user with sudo and SSH keys
- Harden SSH (no root login, no password auth)
- Enable UFW firewall (deny incoming by default)
- Enable automatic security updates
- Install essential tools (vim, htop, curl, wget, fail2ban, tree, glances)
- Configure basic logging and time sync

Tested on Debian 12/13 and Ubuntu 22.04/24.04 LTS.

## Quick start

git clone https://github.com/bernardbiokou/linux-baseline-bash.git
cd linux-baseline-bash/scripts

1) Edit config.sh and paste your SSH public key
nano config.sh

2) Run script by script with root user
sudo ./run_all.sh

## Configuration

Edit `scripts/config.sh`:

ADMIN_USER="deploy"
ADMIN_SSH_KEY="ssh-ed25519 AAAA... your-public-key-here"
TIMEZONE="Europe/Paris"
UFW_HTTP_PORT="80"
UFW_HTTPS_PORT="443"

## Output example

OK Admin user deploy OK
OK SSH: root login disabled
OK SSH: password auth disabled
OK UFW active
OK Auto security updates installed
OK SSH service active
OK NTP sync active
SUCCESS Linux Baseline completed!
