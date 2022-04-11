declare -a arr
#arr=(3 -4 -3 7 9)
read -p "enter the number of elements" n
for (( i=0; i<$n; i++ ))
do
read a
arr[$i]=$a
done
length=${#arr[@]}
for (( i=0; i<$length; i++ ))
do
for (( j=i+1; j<$length; j++ ))
do
	for(( k=$((j+1)); k<$length; k++ ))
	do
		if [  $(( arr[i]  + arr[j] + arr[k] )) -eq 0 ]
		then
		echo "the elements are ${arr[i]}, ${arr[j]}, ${arr[k]}"
		fi
done
	done
		done
