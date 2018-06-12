#!/bin/bash

# get infromations
# read -p 'Enter Username:' userName
# read -p 'Enter password: ' -s password


indisk="output-centos-7-x86_64-server/packer-centos-7-x86_64-server"
outdisk="output-centos-7-x86_64-server/packer-centos-7-x86_64-server.img"

# build the image
packer.io build  centos-7-server-x86_64.json


# cleaning the img
virt-sysprep -a ${indisk}

# move and compress the image
virt-sparsify ${indisk} ${outdisk}  --compress --check-tmpdir=ignore

# removing old img
rm ${indisk}

