#!/bin/bash

# awk : used to print column; in below "|" is pipeline(later)

echo "Hello, My name is Ayush" | awk '{print $5}';
exit 0

#aliter in terminal or script:

awk '{print $[col_num]}' file_name