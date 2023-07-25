#!/usr/bin/env bash

# Get the expected files 
files=("$@")  

# Create an array called files and assign it the values from files
# Check if any arguments were passsed to the script, if none then exit
if [[ ${#files[@]} -eq 0 ]]; then
  exit 0 
fi

exit_status=0 

# Loop over all subdirectories in current directory
for dir in */; do
  dir="${dir%/}"  # remove trailing slash
  missing_files=()
  
  # Check if expected files exist in that directory
  # If missing add name of missing file to missing_files array
  for file in "${files[@]}"; do
    if [[ ! -f "$dir/$file" ]]; then
      missing_files+=("$file")
    fi
  done
  
  # If there are no missing files move to the next subdirectory
  if [[ ${#missing_files[@]} -eq 0 ]]; then
    continue  
  else

  #If missing files then output name of subdirectory to standard error
    exit_status=1  
    echo "$dir/" >&2 
  fi
done

exit $exit_status
