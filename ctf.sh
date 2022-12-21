#!/bin/bash
flag=0
declare -a arr=()
while :
do
	for ((i=0;i<10;i++))
	do
		file="../../sys/class/net/enp4s0f0/statistics/tx_bytes"
		arr[$i]=$(sudo 'cat' "$file")
		if [[ $flag -gt 0 ]]; then
			diff=$(expr "${arr[i]}" - "${arr[(i+1)%10]}" )
			if [[ $diff -gt 125000 ]]; then
				$'date' > /home/cloud/ctf.info
				break
			fi
		fi
		sleep 1
	done
	flag=1
done
