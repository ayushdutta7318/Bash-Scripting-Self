#!/bin/bash


'''

'''

set -xeo pipefail;


echo "===Check System Health===";
uptime

echo "===Check Date===";
date;

echo "===who logged in===";
who;

# check disk health

echo "==================Disk health======================";

df -h;

echo "==========Memory Info===========";

free -h;

