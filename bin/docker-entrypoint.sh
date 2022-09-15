#!/bin/bash

# generate machine-id
uuidgen > /etc/machine-id

# set keyboard for all sh users
echo "export QT_XKB_CONFIG_ROOT=/usr/share/X11/locale" >> /etc/profile

mkdir -p /home/ubuntu/.vnc/

if [[ -z "${VNC_PASS}" ]]; then
  x11vnc -storepasswd ubuntu /home/ubuntu/.vnc/passwd
else
  x11vnc -storepasswd $VNC_PASS /home/ubuntu/.vnc/passwd
fi

chown -R ubuntu /home/ubuntu

exec "$@"

