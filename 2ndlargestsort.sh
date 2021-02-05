#!/bin/bash

arr=(); #empty arr

for (( i=0; i<10; i++ )) #loop for 10 variables
do
        x=$((RANDOM%900 + 100)) # 3 digit random
        arr+=($x);      #store in the array
done

echo $"Array of 10 Random 3 digit numbers: ${arr[@]}"

IFS=$'\n' sorted=($(sort <<<"${arr[*]}")); unset IFS

echo "Sorted Array: ${sorted[@]}"

echo $"Largest value in the array is: ${sorted[-1]}"
echo $"Second Largest value in the array is: ${sorted[-2]}"

echo $"Smallest value in the array is: ${sorted[0]}"
echo $"Second Smallest value in the array is: ${sorted[1]}"
