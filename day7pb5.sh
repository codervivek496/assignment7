#! /bin/bash -x
declare -a arr
declare -a rev
for(( i=0; i<100;i++ ))
do
	arr[i]=$i
done
for (( i=1; i<100; i++ ))
do
	if [ $(( i%11 )) -eq 0 ]
	then
		rev[i]=$i
	fi
done
echo ${arr[@]}
echo "the repeted numbers are"
echo ${rev[@]}
