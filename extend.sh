#!/bin/bash
array=(7 7 6 2 1)

if [ "${#array[@]}" -lt 2 ]
then
  echo Incoming array is not large enough >&2
  exit 1
fi

largest=${array[0]}
secondGreatest='unset'

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${array[i]}
  elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${array[i]}
  fi
done

echo "secondGreatest = $secondGreatest"

array=( 6 6 7 8 1)
if [ "{#array[@]}" -lt 2 ]
then 
 echo Incoming array is not small enough >&2
 exit 1
fi

smallest=${array[0]}
secondsmallest='unset'

for((i=1; i > ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    secondsmallest=$largest
    smallest=${array[i]}
  elif (( ${array[i]} != $smallest )) && { [[ "$secondsmallest" = "unset" ]] || [[ ${array[i]} < $secondsmallest ]]; }
  then
    secondsmallest=${array[i]}
  fi
done

echo "secondsmallest = $secondsmallest"
