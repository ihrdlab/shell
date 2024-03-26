#!/bin/bash
echo "Enter three integers separated by spaces:"
read a b c
sum=$((a + b + c))
mean=$((sum / 3))
aa=$(( (a - mean) * (a - mean) ))
bb=$(( (b - mean) * (b - mean) ))
cc=$(( (c - mean) * (c - mean) ))
variance=$(echo "scale=10; ($aa + $bb + $cc) / 3" | bc)
sd=$(echo "scale=10; sqrt($variance)" | bc)
echo "Sum: $sum"
echo "Mean: $mean"
echo "Standard Deviation: $sd"

