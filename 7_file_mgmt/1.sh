#!/bin/bash

#check if a file exist, if not create one.

if [ -f "$1" ]; then
    echo "$1 already exist";
    exit 2;
else
    touch "$1";
fi
exit 0;


#Redirecting output to a file:

In terminal:
ls -ltr > file_name.extn

#Redirecting Error:

ls /notreal 2> file_name.extn
ls /notreal > file_name.extn 2>&1