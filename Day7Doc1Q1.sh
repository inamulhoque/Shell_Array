#!/bin/bash -x


for (( i=0;i<=9;i++ ))
do
        Arr[i]=$((RANDOM%900+100))
done


min1=999
min2=999
max1=0
max2=0

for (( i=0;i<=9;i++ ))
do
        if [ ${Arr[i]} -gt $max1 ]
        then
                max2=$max1
                max1=${Arr[i]}

        elif [ $max2 -lt ${Arr[i]} ]
        then
                max2=${Arr[i]}
        fi

        if [ ${Arr[i]} -lt $min1 ]
        then
                min2=$min1
                min1=${Arr[i]}

        elif [ $min2 -gt ${Arr[i]} ]
        then
                min2=${Arr[i]}
        fi
done

echo ${Arr[@]}


echo "2nd Maximum: $max2"
echo "2nd Minimum: $min2"
