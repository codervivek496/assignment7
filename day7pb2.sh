#! /bin/bash -x
declare -a value
for i in {0..9}
do
value[i]=$((RANDOM%899+100))
done
echo ${value[@]}
length=${#value[@]}
for(( i=0; i<$length; ++i ))
do
for(( j=i+1; j<$length; ++j ))
do
if [ ${value[i]} -lt ${value[j]} ]
then
a=${value[i]}
value[$i]=${value[j]}
value[$j]=$a
fi
done
done
echo ${value[@]}
echo "the second longest number is" ${value[2]}
echo "the second smalles number is" ${value[length-2]}
