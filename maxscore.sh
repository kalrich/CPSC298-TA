#!/bin/bash

score=()
index=0
max=0

echo "Enter 5 scores: "
read -r first_score
score[0]=$first_score
max=$first_score

for ((index=1; index<5; index++)); do
     read -r score["$index"]
     if ((score[index] > max)); then
           max=${score[$index]}
     fi
done

echo "The highest score is: $max"
echo "The scores are: "
for ((index=0; index<5; index++)); do
     difference=$(echo "scale=2; $max - ${score[$index]}" | bc)
     echo "${score[$index]} differs from max by $difference"
done