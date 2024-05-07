#!/bin/bash

# Set the source directory path
source_dir="/home/agatha/medium"

# Set the backup directory path
backup_dir="/home/agatha/backup"

# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Set the name of the backup file with a timestamp
backup_file="backup_$(date +"%Y%m%d_%H%M%S").tar.gz"

# Create the backup archive
tar -czf "$backup_dir/$backup_file" -C "$source_dir" .

# Check if the backup was created successfully
if [ -f "$backup_dir/$backup_file" ]; then
    echo "Backup created successfully"
else
    echo "Backup failed"
    exit 1
fi

