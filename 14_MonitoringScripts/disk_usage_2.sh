#!/bin/bash

THRESHOLD=30;
USAGE=$(df -h | tail -1 | awk '{print $5}' | tr -d %);

SPACEREMAINING=$(($THRESHOLD-$USAGE));

if [ $USAGE -ge $THRESHOLD ]; then
    echo "Storage space full";
else
    echo "$SPACEREMAINING% remaining";
fi

exit 0;

