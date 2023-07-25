#!/usr/bin/env bash

# Sorts an array of integer values arr using selection sort.
sort() {
    n=${#arr[@]}
    for ((i=0; i<n-1; i++)); do
        minidx=$(smallest $i $n)
        if ((minidx != i)); then
            swap $i $minidx
        fi
    done
}

# Finds the index of the smallest element in arr[i1] through arr[i2 - 1]
# where i1 and i2 are the two arguments passed to the function.
# Prints the index to standard output; e.g.,
#
# smallest 1 4
#
# finds the index of the smallest value of arr[1], arr[2], and arr[3]
# and prints the index to standard output.
smallest() {
    min=$1
    for ((i=$1+1; i<$2; i++)); do
        if ((arr[i] < arr[min])); then
            min=$i
        fi
    done
    echo $min
}

# Swaps elements of the array arr at indexes i and j 
# where i and j are the two arguments passed to the function; e.g.,
#
# swap 1 4
#
# swaps the elements at indexes 1 and 4 of arr
swap() {
    tmp=${arr[$1]}
    arr[$1]=${arr[$2]}
    arr[$2]=$tmp
}

# create array arr from command line arguments
arr=("$@")
# sort arr
sort

# print elements of arr on one line with one space between elements
echo "${arr[@]}"
