cat <<EOF >> /etc/apt/sources.list
# One more network interface
auto ens1
iface ens1 inet dhcp
EOF