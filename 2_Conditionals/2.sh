#!/bin/bash

echo "Enter file path:"
read PATH

if [ -f $PATH ]; then
    echo "File exist";
else
    echo "File doesnt exist";
fi
