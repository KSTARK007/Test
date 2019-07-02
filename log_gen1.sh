#!/bin/bash
declare -a arr=("main")

mkdir -p Output

time python createdata.py 10000000 > data.csv
for prog in "${arr[@]}"
do
    mkdir -p Output/$prog
    for i in `seq 1 5`;
    do
        #sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"
        echo $i 
        time python main.py &
	pid=$!
	echo $pid > .pid
	wait $pid
        dmesg -k > .output
        grep -E -f .pid .output > Output/$prog/$prog$i.log
        echo $i
    done
    echo "done $prog"
done
