#!/bin/bash
echo "$USERNAME ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.d/$USERNAME
chmod 440 /etc/sudoers.d/$USERNAME
chown root:root /etc/sudoers.d/$USERNAME
