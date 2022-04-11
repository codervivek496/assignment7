read -p "enter the number  :" n
c=0
declare -a arr
v=0
for((i=2;i<n;i++))
do
        if [ $((n%i)) -eq 0 ]
        then
                c=1
                for((j=2;j<=$i/2;j++))
                do
                        if [ $((i%j)) -eq 0 ]
                        then
                                c=0
                                break
                        fi
                done

                if [ $c -eq 0 ]
                then
                        arr[v]=$i
                fi
        v=$(( v+1 ))
        fi
done
echo ${arr[2]}
