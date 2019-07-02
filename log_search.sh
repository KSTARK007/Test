#!/bin/bash
#Pratik Edits 
#the old script didn't always work because of the async added with a "&" 
#instead now making sure that dmesg will only output once the program has run and will ensure theat the logs of that program are always present
# echo "Enter the filename to benchmark from the ./benchmarks/: "
# read filename
# echo "Enter the filename you wish to redirect the output to:"
# read op
./benchmarks/$1 > pid
dmesg -k > output.txt 
grep -f pid output.txt > $2
#kill %1