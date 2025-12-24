#!/bin/bash

while IFS= read -r line; do
        if [ -f "$line" ]; then
                echo "Line: $line";
        else
                echo "$file does not exist";
        fi
done < filelist.txt
exit 0;
