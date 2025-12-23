#!/bin/bash

for ITEM in 1 2 3; do
    echo "$ITEM";
done

##loop over arrays:

FRIENDS=("Ayush", "Ramesh", "Suresh");

for friend in "${FRIENDS[@]}"; do
    echo "$friend";
done

declare -A capitals;

capitals=([INDIA]="New Delhi", [CHINA]="Beijing" [RUSSIA]="Moscow");

echo "$capitals";

for capital in $capitals; do
    echo "$capital";
done

for i in {1..10}; do
    echo "$i";
done
