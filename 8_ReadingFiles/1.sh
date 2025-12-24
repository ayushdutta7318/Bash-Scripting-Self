#!/bin/bash

#reading file line by line:
while read line; do
        echo "Name: $line";
done < file.txt;

#alter of above:
while IFS= read -r line; do
        echo "line: $line";
done < file.txt;

exit 0;
