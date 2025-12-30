#!/bin/bash

SOURCE="A:/Bash_Self/13_BackupScripts/";

DEST="backups";

DATE=$(date +%F);

if [ -d "$DEST" ]; then
        echo "$DEST already exist";
else
        mkdir -p "$DEST";
fi

tar -czf "$DEST/sample_$DATE.tar.gz" "$SOURCE";

# add log file for looging

LOGFILE="backups/backup.log";

echo "backup started at $(date)" >> $LOGFILE;
tar -czf "$DEST/sample_$DATE.tar.gz" "$SOURCE";
echo "backup finished at $(date)" >> $LOGFILE;

echo $?;