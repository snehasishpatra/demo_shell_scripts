#!/bin/bash

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src >/dev/null
aws s3 sync "$dest" s3://tws-backups2
echo "backup done"

