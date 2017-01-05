#!/bin/bash

time=$1
iterations=$2
file_cpu=$3
file_memory=$4
file_network=$5
sar -u $time $iterations > $file_cpu.txt & sar -r $time $iterations > $file_memory.txt & sar -n DEV $time $iterations > $file_network.txt
sed 's/[[:space:]]\+/,/g' $file_cpu.txt > $file_cpu.csv & sed 's/[[:space:]]\+/,/g' $file_memory.txt > $file_memory.csv & sed 's/[[:space:]]\+/,/g' $file_network.txt > $file_network.csv 
sed -i '1,2d;$d' $file_cpu.csv &  sed -i '1,2d;$d' $file_memory.csv
#end
