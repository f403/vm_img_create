cat <<EOF > /etc/sysconfig/network-scripts/ifcfg-eth0
# Generated by packer
NAME="eth0"
ONBOOT=yes
BOOTPROTO=dhcp
TYPE=Ethernet
EOF
cat <<EOF > /etc/sysconfig/network-scripts/ifcfg-eth1
# Generated by packer
NAME="eth1"
ONBOOT=yes
BOOTPROTO=dhcp
TYPE=Ethernet
EOF
