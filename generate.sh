#!/bin/bash

# Directory where files will be created
target_dir="./files"
mkdir -p "$target_dir"

# Number of files to create
num_files=${NUM_FILES:-120000}

# File size in KB
file_size_kb=${FILE_SIZE_IN_KB:-1}

for i in $(seq 1 $num_files); do
    # Use /dev/urandom to generate random data and head to limit to 10KB
    head -c ${file_size_kb}K /dev/urandom > "$target_dir/file_$i.dat"
done

echo "Finished creating $num_files files of $file_size_kb KB each."

