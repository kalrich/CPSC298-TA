#!/bin/bash
# numbers.sh
# Kalin Richardson

echo "Enter a positive number: "
read -r X

for ((i=1;i<=X;i++))
do
    if (( i % 2 == 0 )); then
        echo "$i is even"
    else
        echo "$i is odd"
    fi
done