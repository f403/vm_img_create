#!/bin/bash
echo "$SUDO_USER ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.d/$SUDO_USER
chmod 440 /etc/sudoers.d/$SUDO_USER
chown root:root /etc/sudoers.d/$SUDO_USER
