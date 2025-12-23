#!/bin/bash

echo "we are writing exit codes";

if [ -f "$1" ]; then
    echo "file exist";
    exit 0;
else
    echo "file does not exist";
    exit 2;
fi
