#!/bin/bash


echo "Enter 5 numbers"
for((i=0;i<5;i++))
do
read arr[i]
done
echo ${arr[@]}
n=${#arr[@]}
#arr[0]=-1
#arr[1]=1
#arr[2]=0
for((i=0;i<n-2;i++))
do
for((j=i+1;j<n-1;j++))
do
for((k=j+1;k<n;k++))
do
if [ $((${arr[i]}+${arr[j]}+${arr[k]})) -eq 0 ]
then
echo ${arr[i]}  ${arr[j]}  ${arr[k]}
fi
done
done
done
