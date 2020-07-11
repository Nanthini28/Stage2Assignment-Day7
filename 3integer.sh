#!/bin/bash
function 3_int(){
	echo "enter the element of array:"
	read -a array
	expectedsum=0
	result=0
	if (( ${array[@]}>10 ))
	then
		echo please enter array size 
	else
		for (( i=0;i<${#array[@]}-2;i++ ))
		do
			for (( j=i+1;j<${#array[@]}-1;j++ ))
			do
				for (( k=j+1;k<${#array[@]};k++ ))
				do
					arraysum=$(( array[i]+array[j]+array[k] ))
					if(( $arraysum==$expectedsum ))
					then
						result[0]=${array[i]}
						result[1]=${array[j]}
						result[2]=${array[k]}
						echo ${result[@]}
					fi
				done
			done
		done
	fi
}
3_int
