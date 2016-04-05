#!/bin/bash

useradd --create-home --home-dir /home/$PUSER $PUSER
usermod -o -u $PUID $PUSER
groupmod -o -g $PGID $PUSER
chown -R $PUID:$PGID /home/$PUSER
