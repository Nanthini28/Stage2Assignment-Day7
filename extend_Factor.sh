#!/bin/bash
function prime_fact(){
value=$1
temp=0
for((num=2; num<=$value; num++))
do
	flag=0
	for((i=2; i*i<=$num; i++))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
		((flag++))
		fi
	done
	if [[ ($flag -eq 0) && ($(($value%$num)) -eq 0) ]]
	then
		prime_fact[temp++]=$num
	fi
done
echo ${prime_fact[0]}
}
read -p "enter the value:" value
prime_fact $value
