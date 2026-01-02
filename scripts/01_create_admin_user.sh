#!/bin/bash
source ./config.sh

echo "1. Creating admin user $ADMIN_USER..."

# Create user with home and shell
useradd -m -s /bin/bash "$ADMIN_USER"

# Add to sudo group without password
echo "$ADMIN_USER ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/"$ADMIN_USER"
chmod 440 /etc/sudoers.d/"$ADMIN_USER"

# Add SSH key
mkdir -p /home/"$ADMIN_USER"/.ssh
echo "$ADMIN_SSH_KEY" > /home/"$ADMIN_USER"/.ssh/authorized_keys
chown -R "$ADMIN_USER":"$ADMIN_USER" /home/"$ADMIN_USER"/.ssh
chmod 700 /home/"$ADMIN_USER"/.ssh
chmod 600 /home/"$ADMIN_USER"/.ssh/authorized_keys

# Lock root
passwd -l root

echo "Admin user $ADMIN_USER created + SSH key + root locked"
