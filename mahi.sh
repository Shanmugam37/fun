#!/bin/bash

echo Enter the calculation numbers 
read cal 
echo "enter a value "
read a
echo "enter b value "
read b
case $cal in 
add)
echo "addition of $a+$b"=$((a + b))
;;
sub)
echo "subration of $b-$a"=$((b - a))
;;
mul)
echo "multiplication of $a*$b"=$((a * b))
;;
div)
echo "division of $b%$a"=$((b % a))
;;
*)
echo "this fuction is not available" 
;;
esac
