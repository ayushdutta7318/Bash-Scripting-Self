#!/bin/bash

while IFS= read -r line; do
        echo "Printing City Name: $line";
done < city_3.txt
exit 0;
