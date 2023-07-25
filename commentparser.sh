#!/usr/bin/env bash

# Check if # of arguments passed is less than 1, exit 0 if so
if [[ $# -lt 1 ]]; then
  exit 0
fi


# Read input lines from file specified as argument to script
while IFS='' read -r line; do
  # Remove comments after first occurrence of "#"
  line="${line%%#*}"
  # Initialize variable 'single_quote' to 0
  single_quote=0
  # Initialize out variable to empty string
  out=""
  # Loop through each character in the line
  for (( i=0; i<${#line}; i++ )); do
    char="${line:$i:1}"

    # Check if character is a single quote
    if [[ "$char" == "'" ]]; then
      if [[ "$single_quote" -eq 0 ]]; then
        single_quote=1
      else
        single_quote=0
      fi
    fi

    # Check if current char is '#' and not inside ' 
    if [[ "$single_quote" -eq 0 && "$char" == "#" ]]; then

      out="${line:0:$i}"
      break
    fi
    out+="$char"
  done
  echo "$out"
done < "$1"
