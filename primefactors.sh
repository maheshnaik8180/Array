function isPrime() {
	x=$1
	flag=1
	i=2
	while [ $i -lt $x ];do
		if [ $(($x%$i)) -eq 0 ];then
			#$x is Not Prime
			flag=0;
			break
		else
			((i++));
		fi
	done

	}

function primeFactorize() {
	primeFactors=()
	y=$1
	j=2
	while [[ $y -gt 1 ]]; do
		isPrime $j;
		if [[ $flag -eq 1 ]];then
			if [ $(($y % $j)) -eq 0 ];then
				y=$(($y/$j));
				primeFactors+=($j);
			else
				((j++));
			fi
		else
			((j++))
		fi
	done
	echo $"The prime factors of $1 are: ${primeFactors[@]}"
}


read -p "Enter a positive integer greater than 1 to be Prime Factorized: " z

if [ $z -gt 1 ];then
	primeFactorize $z;
else
	echo "ERROR: Enter a vaild number greater than 1 !"
fi
