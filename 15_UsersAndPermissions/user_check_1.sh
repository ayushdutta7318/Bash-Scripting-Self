#!/bin/bash

#check if user exist
USERNAME=$1;

check if terminal input is empty
if [ -z $USERNAME ]; then
    echo "USAGE: $0"
    exit 1;
fi

#check if user exist or not.
if grep -q "^${USERNAME}:" /etc/passwd; then
    echo "$USERNAME exists";
else
    echo "$USERNAME does not exist";
fi

exit 0;
