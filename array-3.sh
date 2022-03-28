#!/bin/bash

read -p "Enter the number :" n;
k=0
for((i=1;i<=n;i++))
do
c=0;
if [ $((n%i)) -eq 0 ]
then
for((j=2;j<=i;j++))
do
if [ $((i%j)) -eq 0 ]
then 
c=$((c+1));
fi
done
fi
if [ $c -eq 1 ]
then 
arr[$k]=$i
((k++))
fi
done

echo "Prime factors of $n is:"
echo ${arr[@]}
