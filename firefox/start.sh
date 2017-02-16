#!/bin/bash
groupmod -g $gid firefox
usermod -u $uid -g $gid firefox
chown firefox:firefox /home/firefox

if [ -d /home/firefox/.mozilla ]; then
  chown -R firefox:firefox /home/firefox/.mozilla
fi

exec sudo -u firefox /usr/bin/firefox $ARGS $URL
