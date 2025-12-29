#!/bin/bash

#create file
createFile(){
    touch "sample.txt";
}

createFile;

# clean up file
FILE=sample.txt;

cleanup(){
    echo "Cleaning up: "
    rm -rvf "$FILE";
}

trap cleanup SIGINT EXIT;
sleep 10;