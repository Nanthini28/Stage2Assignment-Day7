#!/bin/bash
function repeated()
{
	for (( i=1;i<=100;i++ ))
	do
		rem=$((i%10))
		div=$((i/10))
		if [ $rem -eq $div ]
		then
			array[i]=$i
		fi
	done
echo ${array[0]}
}
repeated
