cat <<EOF >> /etc/network/interfaces
# One more network interface
auto enp1s1
iface enp1s1 inet dhcp
EOF