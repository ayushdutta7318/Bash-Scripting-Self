#!/bin/bash

set -e;

#check if inp provded
if [ -z "$1" ]; then
    echo "Provide an input: $0";
    exit 0;
fi


#check if dir readable
DIR="$1";

if [ ! -r "$DIR" ]; then
    echo "$DIR is not readable";
    exit 0;
fi

#check if dir exist
if [ -d "$DIR" ]; then
    ls -ltr "$DIR";
    exit 0;
else
    echo "$DIR do not exist";
fi

exit 0;
