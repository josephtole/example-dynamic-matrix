#!/bin/bash

## This will add junk data to 3 random folders in the images directory.

base_dir="images/"

find "$base_dir" -maxdepth 1 -type d | \
shuf -n "$(shuf -i 5-15 -n 1)" | \
while read -r working_dir
do
  junk_file="$working_dir/junk.txt"
  echo "Adding data to $junk_file"
  date "+@%s.%N - $(uuidgen)" >> "$junk_file"
  git add "$junk_file"
  git commit -m "Added junk data to $junk_file"
done
