#!/bin/bash
# Configuration - edit before running run_all.sh

# Admin user to create
ADMIN_USER="deploy"
ADMIN_SSH_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIARQZgCMfwFiHdqwV/...user@host"  # Paste your public key here

# Timezone
TIMEZONE="Europe/Paris"

# Ports to open (leave empty if not needed)
UFW_HTTP_PORT=""
UFW_HTTPS_PORT=""
