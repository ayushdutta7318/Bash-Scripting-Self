#!/bin/bash

set -euo pipefail;

LOGFILE="/a/Bash-Self/16_CronScheduling/backup.log";

echo "Run started at $(date)" >> "$LOGFILE"

#script logic here:
echo "hello world";


echo "Run finished at $(date)" >> "$LOGFILE";