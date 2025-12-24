#!/bin/bash

#Acting on each line:
while IFS= read -r file; do
        if [ -f "$file" ]; then
                echo "$file exist";
        else
                echo "$file does not exist";
        fi
done < filelist.txt;
exit 0
