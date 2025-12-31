#!/bin/bash

systemctl is-active ssh;

echo "Enter service name:";
read SERVICE;

if [ systemctl is-active $SERVICE ]; then
    echo "OK: $SERVICE is Running";
else
    systemctl start $SERVICE;
    echo "$SERVICE is Stopped";
fi

exit 0;