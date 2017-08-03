#!/bin/bash

# get infromations
read -p 'Enter Username:' userName
read -p 'Enter password: ' -s password
read -p 'Enter VM hostname: ' -s vmhostname

#imageDir=/images
indisk="output-ubuntu-14.04-netboot-amd64/packer-ubuntu-14.04-netboot-amd64"
outdisk="output-ubuntu-14.04-netboot-amd64/packer-ubuntu-14.04-netboot-amd64.img"

# export LIBGUESTFS_DEBUG=1 LIBGUESTFS_TRACE=1

# build the image
packer build -var "user=${userName}" -var "password=${password}" -var "hostname=${vmhostname}" ubuntu-14.04-netboot.json


# cleaning the img
virt-sysprep -a ${indisk} --firstboot-command 'dpkg-reconfigure openssh-server'

# move and compress the image
virt-sparsify ${indisk} ${outdisk}  --compress --check-tmpdir ignore

# removing old img
rm ${indisk}

