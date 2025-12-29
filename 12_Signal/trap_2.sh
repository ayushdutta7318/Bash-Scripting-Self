#!/bin/bash

#Trap: trap lets you run commands when a signal occurs.

FILE=test.txt;

cleanup(){
    echo "Cleaning Up: "
    rm -rvf "$FILE";
}

trap cleanup SIGINT;
trap cleanup EXIT;

echo "test file created...";
sleep 5;