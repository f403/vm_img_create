PACKAGES="
ifupdown
curl
tmux
mc
tightvncserver
xfonts-base
xrdp
mate-core
mate-desktop-environment
mate-notification-daemon
firefox
crudini
"
apt-get -y install $PACKAGES
echo mate-session> /etc/skel/.xsession
crudini --set /etc/xrdp/xrdp.ini Globals channel_code false
# touch /var/log/xrdp.log
# chown xrdp:root /var/log/xrdp.log
# chmod 600 /var/log/xrdp.log
