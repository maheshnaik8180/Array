#!/bin/bash -x

base=0

for (( counter=0; counter<=100; counter++ ))
do
	if (( counter>=10 ))
	then
		var1=$(( counter%10 ))
		var2=$(( counter/10 ))
		if (( var1 == var2 ))
		then
			ans[$((base++))]=$counter
		fi
	fi
done

echo ${ans[@]}
