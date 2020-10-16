#! /bin/bash

#Author : Ankita Angane
#Arithmetic Operations And Sorting Program

declare -A dictOperation

#UC1:Input three numbers
read -p "Enter First Number : " number1
read -p "Enter Second Number : " number2
read -p "Enter Third Number : " number3

echo "Your numbers are : $number1 $number2 $number3"

#First Computation
operation1=$(( number1 + ( number2 * number3 )))
echo "number1 + number2 * number3 : $operation1"

#Second Computation
operation2=$(( ( number1 * number2 ) + number3 ))
echo "number1 * number2 + number3 : $operation2"

#Third Computation
operation3=`awk "BEGIN{print ($number3 + ( $number1 / $number2 )) }"`
echo "number3 + number1 /number2 : $operation3"

#Fourth Computation
operation4=$(( (number1 % number2) + number3 ))
echo "number1 % number2 + number3 : $operation4"

dictOperation[operation1]=$operation1
dictOperation[operation2]=$operation2
dictOperation[operation3]=$operation3
dictOperation[operation4]=$operation4

echo "All results stored in dictionary are : "
echo ${!dictOperation[@]} ${dictOperation[@]}

for (( i=1; i<=${#dictOperation[@]}; i++ ))
do
	arrayOperation[$i]=${dictOperation[operation$i]}
done

echo "Results from array are : "
echo ${arrayOperation[@]}

sortedDesc=($(printf '%s\n' "${arrayOperation[@]}" | sort -nr ))
echo "Sorted in Decending order : ${sortedDesc[@]}"

sortedAsce=($(printf '%s\n' "${arrayOperation[@]}" | sort ))
echo "Sorted in Ascending order : ${sortedAsce[@]}"

