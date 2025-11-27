#!/bin/bash

# Lec-2 Assignment:

# '''
# Build a System Inspector: Write a new script called inspector.sh that does the following:

# Takes a directory path as its first and only command line argument (e.g., ./inspector.sh /var/log).

# If no argument is given, it should print an error message: "Usage: ./inspector.sh <directory_path>" and exit.

# It should then report:

# The path it is inspecting.

# The number of items in that directory (ls -1 <dir> | wc -l).

# The disk usage of that directory (du -sh <dir>).

# The largest 5 files in that directory (du -h <dir> | sort -rh | head -5).
# '''

set -eo pipefail;

Target_dir="$1";

if [ $# -eq 0 ];
then
      echo -e "\033[31mError: The argument is empty\033[0m";
      exit 1;
fi

if [ ! -d "$Target_dir" ];
then
      echo -e "\033[31mError: '$Target_dir' Directory doesnt exist\033[0m";
      exit 1;
fi



echo -e "\033[32mThe path inspecting\033[0m: ${1}\n\033[32mnumber of elements in this directory is\033[0m: $(ls -l ${1} | wc -l) \n\033[32mDisk Usage:\033[0m $(du -sh ${1}) \n\033[32mLargest Files Are:\033[0m $(du -h ${1} | sort -rh | head -5) ${1} ";



