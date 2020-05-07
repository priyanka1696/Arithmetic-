#!/bin/bash -x
echo "Welcome to Sorting Arithmetic Computation Problem"
echo "Enter Three Number";
read Number1;
read Number2;
read Number3;
operation1=$(($Number1+$Number2*$Number3));
operation2=$(($Number1%$Number2+$Number3));
operation3=$(($Number1+$Number2/$Number3));
operation4=$(($Number1*$Number2+$Number3));

result[0]="$operation1"
result[1]="$operation2"
result[2]="$operation3"
result[3]="$operation4"
echo ${result[@]}
arrayLength=${#result[@]}
for ((i=0;i<$arrayLength;i++))
do
  for ((j=i+1;j<$arrayLength;j++))
  do
    if [ ${result[i]} -lt ${result[j]} ];
    then
                temp=${result[i]};
                result[$i]=${result[j]};
                result[$j]=$temp;
    fi
        done
done
echo ${result[@]};
echo "descending Order= "${result[@]}

for ((i=0;i<$arrayLength;i++))
do
  for ((j=i+1;j<$arrayLength;j++))
  do
    if [ ${result[i]} -gt ${result[j]} ];
    then
                temp=${result[i]};
                result[$i]=${result[j]};
                result[$j]=$temp;
    fi
        done
done
echo ${result[@]};
echo "Ascending Order= "${result[@]}

