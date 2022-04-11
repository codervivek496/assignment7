#! /bin/bash -x
declare -a arr
for i in {0..9}
do
        arr[i]=$((RANDOM%899+100))
done
length=${#arr[@]}
echo ${arr[@]}
max=${arr[0]}
smax=0
min=${arr[0]}
smin=0
for((i=0;i<$length;i++))
do
        if [ ${arr[i]} -gt $max ]
        then
                smax=$max
                max=${arr[i]}
        elif [ ${arr[i]} -gt $smax -a ${arr[i]} -ne $max ]
        then
                smax=${arr[i]}
        fi
done
echo "the second largest number:"$smax

for((i=0;i<$length;i++))
do
        if [ ${arr[i]} -le $min ]
        then
                smin=$min
                min=${arr[i]}
        elif [ ${arr[i]} -le $smin -a ${arr[i]} -ne $min ]
        then
                smin=${arr[i]}
        fi
done
echo "the second smallest number:" $smin
