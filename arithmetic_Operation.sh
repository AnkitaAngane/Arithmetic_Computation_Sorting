#! /bin/bash

#Author : Ankita Angane
#Arithmetic Operations And Sorting Program

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

