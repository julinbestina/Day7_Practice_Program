#!/bin/bash

for((i=0;i<10;i++))
do
arr[i]=$((RANDOM%900+100))
done

for((i=0;i<10;i++))
do
 result=$result"\n"${arr[i]}
done
echo -e $result | sort

secondmin=`echo -e $result | sort | head -3 | tail -1`

echo "Second smallest is :" $secondmin

secondmax=`echo -e $result | sort | tail -2 | head -1`

echo "Second largest is :" $secondmax
