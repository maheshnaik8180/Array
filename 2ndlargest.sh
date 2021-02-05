#!/bin/bash

arr=();	#empty arr

for (( i=0; i<10; i++ )) #loop for 10 variables
do
	x=$((RANDOM%900 + 100)) # 3 digit random 
	arr+=($x);	#store in the array
done

echo $"Array of 10 Random 3 digit numbers: ${arr[@]}"

largest=-32768;
secondLargest=-32768;

for (( i=0; i<${#arr[@]}; i++ ))
do
	if [[ ${arr[i]} -ge $largest ]];then
		secondLargest=$largest;
		largest=${arr[i]};
	fi

	if [[ ${arr[i]} -ne $largest && ${arr[i]} -gt $secondLargest ]];then
		secondLargest=${arr[i]};
	fi
done

echo $"Largest value in the array is: $largest"
echo $"Second Largest value in the array is: $secondLargest"

smallest=32767;
secondSmallest=32767;

for (( i=0; i<${#arr[@]}; i++ ))
do
	if [[ ${arr[i]} -le $smallest ]];then
		secondSmallest=$smallest;
		smallest=${arr[i]};
	fi

	if [[ ${arr[i]} -ne $smallest && ${arr[i]} -lt $secondSmallest ]];then
		secondSmallest=${arr[i]};
	fi
done

echo $"Smallest value in the array is: $smallest"
echo $"Second Smallest value in the array is: $secondSmallest"
