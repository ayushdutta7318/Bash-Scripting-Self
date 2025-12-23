#!/bin/bash

#check if directory exist
if [ -d "$1" ]; then
    echo "$1 exist"
    exit 0;
else
    echo "$1 does not exist";
    exit 2;
fi
