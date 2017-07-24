cat <<EOF >> /etc/network/interfaces
# One more network interface
auto ens1
iface ens1 inet dhcp
EOF