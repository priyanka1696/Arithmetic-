#!/bin/bash -x
echo "Welcome to Sorting Arithmetic Computation Problem"
echo "Enter Three Number"
read number1
read number2
read number3
OPeration1=$(($Number1+$Number2*$Number3));
OPeration2=$(($Number1%$Number2+$Number3));
OPeration3=$(($Number1+$Number2/$Number3));
OPeration4=$(($Number1*$Number2+$Number3));
Result[1]="$Operation1"
Result[2]="$Operation2"
Result[3]="$Operation3"
Result[4]="$Operation4"
echo ${result[@]}
arrayLength=${#result[@]}
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

