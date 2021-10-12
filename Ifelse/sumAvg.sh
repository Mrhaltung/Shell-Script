#!/bin/bash -x

digit1=$(((RANDOM%99) + 10))
digit2=$(((RANDOM%99) + 10))
digit3=$(((RANDOM%99) + 10))
digit4=$(((RANDOM%99) + 10))
digit5=$(((RANDOM%99) + 10))

sum=$(($digit1+$digit2+$digit3+$digit4+$digit5))
average=$(($sum / 5 | bc -l ))
echo $sum
echo $average
