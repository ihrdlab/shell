#!/bin/bash

echo "Enter a number: "
read c
x=$c
sum=0
n=${#c}

while [ $x -gt 0 ]; do
    digit=$(( $x % 10 ))
    sum=$(( $sum + $(( $digit ** $n )) ))
    x=$(( $x / 10 ))
done

if [ $sum -eq $c ]; then
    echo "It is an Armstrong Number."
else
    echo "It is not an Armstrong Number."
fi

