#!/bin/bash

THRESHOLD=5;
USAGE=$(free | awk '/Mem/ {printf("%0.f"), $3/$2*100}');

MEMORYREMAIN=$(($THRESHOLD-$USAGE));

if [ $USAGE -ge $THRESHOLD ]; then
    echo "Memory Full";
else
    echo "Memory remaining: $MEMORYREMAIN";
fi

exit 0;