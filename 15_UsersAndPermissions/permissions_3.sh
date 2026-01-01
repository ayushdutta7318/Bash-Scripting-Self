#!/bin/bash

#Check user permission:

FILE=$1

#check if argument is empty:

if [ -z $FILE ]; then
    echo "USAGE: $0";
    exit 1;
fi

if [ ! -e "$FILE" ]; then
    echo "$FILE does not exist";
    exit 1;
else
    echo "$FILE already exist";
fi

exit 0;

#| Flag | Meaning    |
# | ---- | ---------- |
# | -r   | readable   |
# | -w   | writable   |
# | -x   | executable |
# | -e   | exists     |
