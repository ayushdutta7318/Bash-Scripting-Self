#!/bin/bash

set -e;

USER=$1

#check if terminal argument is empty;
if [ -z $USER ]; then
    echo "$0";
    exit 1;
fi
exit 1

#check if user already exist;
if grep -q "^${USER}:" /etc/passwd; then
    echo "$USER already exist";
    exit 1;
fi

# create user
adduser $1;
echo "$1 created successfully";

exit 0;
