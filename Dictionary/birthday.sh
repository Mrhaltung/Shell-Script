#!/bin/bash

declare -A Person
declare -A Month

P=1

while (( P <= 50 ))
  do
        m=$((RANDOM%12+1))
        Person[$P]=$m
        echo "person $P : ${Person[$P]}"
        P=$((P+1))
        case $m in
                1)Month[$m]=$((${Month[$m]}+1));;
                2)Month[$m]=$((${Month[$m]}+1));;
                3)Month[$m]=$((${Month[$m]}+1));;
                4)Month[$m]=$((${Month[$m]}+1));;
                5)Month[$m]=$((${Month[$m]}+1));;
                6)Month[$m]=$((${Month[$m]}+1));;
                7)Month[$m]=$((${Month[$m]}+1));;
                8)Month[$m]=$((${Month[$m]}+1));;
                9)Month[$m]=$((${Month[$m]}+1));;
                10)Month[$m]=$((${Month[$m]}+1));;
                11)Month[$m]=$((${Month[$m]}+1));;
                12)Month[$m]=$((${Month[$m]}+1));;
        esac
  done

echo "How Many Persons Birthday in Below Month"

for (( i=1; i<=${#Month[@]}; i++ ))
  do
        echo "Month $i : ${Month[$i]}"
  done
