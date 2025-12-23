#!/bin/bash

#conditionals:

echo "Enter n:";
read NUM

if [ $NUM -gt 10 ]; then
    echo "$NUM is greater than 10";
else
    echo "$NUM is less than 10";
fi
