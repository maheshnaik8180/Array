#!/bin/bash

function  tripletSum() {

	arr=($@)	#syntax to input an array to a function
	echo "The given array is: ${arr[@]}"
	declare -a subSet

	for (( i=0; i<${#arr[@]}; i++ ));do
		firstNumber=${arr[i]};
		for (( j=i+1; j<${#arr[@]}; j++ ));do
			secondNumber=${arr[j]};
			for (( k=j+1; k<${#arr[@]}; k++ ));do
				thirdNumber=${arr[k]};

				sum=$(( $firstNumber+$secondNumber+$thirdNumber ));

				if [[ $sum -eq 0 ]];then
					subSet+=($firstNumber $secondNumber $thirdNumber);
					#echo $"$firstNumber,$secondNumber,$thirdNumber"
				fi
			done
		done
	done
	if [[ ${#subSet[@]} -ne 0 ]];then
		echo "Triplets whose sum is equal to zero are: "
		for (( i=0; i<${#subSet[@]}; i+=3 ));do
			echo "${subSet[i]},${subSet[i+1]},${subSet[i+2]}"
		done
	else
		echo "There are no subsets in the given array whose sum is eqal to zero."
	fi
}

in1=(3 -1 -7 -4 -5 9 -4 -7 2 5)
in2=(1 2 3 4 5 6 7)

tripletSum "${in1[@]}"
tripletSum "${in2[@]}"
