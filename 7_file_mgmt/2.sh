#!/bin/bash

#appending to file

echo "enter file: ";
read file

echo "enter text: ";
read text;

echo "$text" >> "$file";
exit 0;
