#!/bin/bash
x=0
for((i=1;i<=100;i++))
do
if [ $((i%11)) -eq 0 ]
then 
 arr[x]=$i
((x++))
fi
done
echo ${arr[@]}
