#!/usr/bin/env bash

# Initialize boolean variables
contains_no_whitespace=true
long_enough=true
contains_letter=true
contains_digit=true
contains_symbol=true

# Checking for argument
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 password" >&2
    exit 1
fi

# Checking for white spaces
if echo "$1" | grep -q ' '; then
    contains_no_whitespace=false
fi

# Checking if long enough
if [[ ${#1} -lt 8 ]]; then
    long_enough=false
fi

# Checking if contains letter
if ! echo "$1" | grep -q '[[:alpha:]]'; then
    contains_letter=false
fi

# Checking if contains digit
if ! echo "$1" | grep -q '[[:digit:]]'; then
    contains_digit=false
fi

# Checking if contains symbol
if ! echo "$1" | grep -q '[[:punct:]]'; then
    contains_symbol=false
fi

# Printing error messages to standard error
if ! $contains_no_whitespace; then
    echo "password cannot contain whitespace">&2
fi

if ! $long_enough; then
    echo "password length less than 8">&2
fi

if ! $contains_letter; then
    echo "password must contain at least one letter">&2
fi

if ! $contains_digit; then
    echo "password must contain at least one digit">&2
fi

if ! $contains_symbol; then
    echo "password must contain at least one symbol">&2
fi

#  Setting exit status to 2 if errors
if ! $contains_no_whitespace || ! $long_enough || ! $contains_letter || ! $contains_digit || ! $contains_symbol; then
    exit 2
fi

# Setting exit status to 0 if errors
exit 0
