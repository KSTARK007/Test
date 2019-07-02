#!/bin/sh

w_dir='Output/main/' # working directory of your output
base='main' # base name of your file

file="$w_dir$base"'5.log' # file name = w_dir+base+rev.log
op="$w_dir$base.csv" # output in csv format easier for parsing I suppose

addr='0x\S+' # Regex for adddress
patt='page_cache\S+|pagecache\S+' # Just add whatever pattern needed

grep -E -o $addr' |'$patt $file > $op 
sed -i -z 's/,\n/;/g' $op # Process this file to make it csv compatiable
