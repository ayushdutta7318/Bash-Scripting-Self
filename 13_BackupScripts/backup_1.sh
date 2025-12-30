#!/bin/bash

# 1. tar cmd: create a backup file

tar -czf test.tar.gz "A:/Bash_Self/13_BackupScripts";

# 2. store backup file in a folder

if [ -d "backup" ]; then
        echo "dir already exist";
else
        mkdir -p "backup";
fi

# 3. create backup inside that forlder

tar -czf backup/test.tar.gz "A:/Bash_Self/13_BackupScripts/"

# 4. add date

date;
date +%F;

# 5. combine 3 and 4

tar -czf backup/test_$(date +%F).tar.gz "A:/Bash_Self/13_BackupScripts";