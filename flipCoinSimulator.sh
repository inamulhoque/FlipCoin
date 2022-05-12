#!/bin/bash -x

win=0
loss=0

for (( i=0; i<10; i++ ))
do
	val=$((RANDOM%2))
	if [ $val -eq 1 ]
	then
		((win++))
	else
		((loss++))
	fi
done
echo "Total 10 number of toss"
echo "Head wins : $win"
echo "Tail wins : $loss"
