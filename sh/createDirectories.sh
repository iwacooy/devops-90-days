#!/bin/bash

# Check if 3 arguments are given
if [ "$#" -ne 3 ] #./task1-adv.sh mydir 1 5 <= ini adalah contoh argumen, argumen yang diberikan harus 3
then
    echo "Please use the following sequence: ./createDirectories.sh <directory-name> <start-number> <end-number>"
    exit 1
fi

# Store the three arguments into variables
directory_name=$1
start_number=$2
end_number=$3

# Create directories
for ((i=start_number; i<=end_number; i++)); do
    mkdir "$directory_name$i"
done

echo "The directories have been successfully created"
